/*
 * Copyright 2017, Intel Corporation
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in
 *       the documentation and/or other materials provided with the
 *       distribution.
 *
 *     * Neither the name of the copyright holder nor the names of its
 *       contributors may be used to endorse or promote products derived
 *       from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#pragma once

#include <vector>
#include "../pmemkv.h"
#include <memory>
//lhh add
#include "../nvmpool/MemoryPool.h"


using std::move;
using std::unique_ptr;
using std::vector;
//lhh modify
//using nvml::obj::p;
//using nvml::obj::persistent_ptr;
//using nvml::obj::make_persistent;
//using nvml::obj::transaction;
//using nvml::obj::delete_persistent;
//using nvml::obj::pool;

namespace pmemkv {
namespace kvtree {

const string ENGINE = "kvtree";                            // engine identifier

#define INNER_KEYS 4                                       // maximum keys for inner nodes
#define INNER_KEYS_MIDPOINT (INNER_KEYS / 2)               // halfway point within the node
#define INNER_KEYS_UPPER ((INNER_KEYS / 2) + 1)            // index where upper half of keys begins
#define LEAF_KEYS 48                                       // maximum keys in tree nodes
#define LEAF_KEYS_MIDPOINT (LEAF_KEYS / 2)                 // halfway point within the node

//lhh add
#define KV_SIZE 128
 

struct KVString{
    char kv[KV_SIZE];
    KVString() = default;
    ~KVString() = default;
    void* Get() { return kv; }
};

class KVSlot {
  public:
    KVSlot()
    : ph(0), ks(0), vs(0), kv(NULL) {}
    uint8_t hash() const { return ph; }                    // Pearson hash for key
    const char* key() const { return (char*)(kv->Get()); }           // key as C-style string
    const uint32_t keysize() const { return ks; }          // size of key (without null)
    const char* val() const { return (char*)(kv->Get()) + ks + 1; }  // pointer to binary-safe value
    const uint32_t valsize() const { return vs; }          // size of length (without null)
    void clear();                                          // frees persistent memory
    void set(uint8_t hash, const string& key,              // sets all slot fields
             const string& value);
  private:
    uint8_t ph;                                            // Pearson hash for key
    uint32_t ks;                                           // key size
    uint32_t vs;                                           // value size
    //persistent_ptr<char[]> kv;                             // buffer for key & value
    //lhh modify
    KVString* kv = NULL;
};

struct KVLeaf {
    //lhh add
    KVLeaf() : next(nullptr) {
      for (int i=0;i<LEAF_KEYS;++i) slots[i] = new KVSlot();
    }
    KVSlot* slots[LEAF_KEYS];
    KVLeaf* next;
    ~KVLeaf() {
      for (int i=0;i<LEAF_KEYS;++i) delete slots[i];
    }
    //p<KVSlot> slots[LEAF_KEYS];                            // array of slot containers
    //persistent_ptr<KVLeaf> next;                           // next leaf in unsorted list
};

struct KVRoot {                                            // persistent root object
    //persistent_ptr<KVLeaf> head;                           // head of linked list of leaves
    KVLeaf* head;
    KVRoot() : head(nullptr) { }
};

struct KVInnerNode;

struct KVNode {                                            // volatile nodes of the tree
    bool is_leaf = false;                                  // indicate inner or leaf node
    KVInnerNode* parent;                                   // parent of this node (null if top)
    virtual ~KVNode() = default;
};

struct KVInnerNode final : KVNode {                        // volatile inner nodes of the tree
    uint8_t keycount;                                      // count of keys in this node
    string keys[INNER_KEYS + 1];                           // child keys plus one overflow slot
    unique_ptr<KVNode> children[INNER_KEYS + 2];           // child nodes plus one overflow slot
    void assert_invariants();
};

struct KVLeafNode final : KVNode {                         // volatile leaf nodes of the tree
    uint8_t hashes[LEAF_KEYS];                             // Pearson hashes of keys
    string keys[LEAF_KEYS];                                // keys stored in this leaf
    //persistent_ptr<KVLeaf> leaf;                           // pointer to persistent leaf
    KVLeaf* leaf;
};
/*

struct KVRecoveredLeaf {                                   // temporary wrapper used for recovery
    unique_ptr<KVLeafNode> leafnode;                       // leaf node being recovered
    char* max_key;                                         // highest sorting key present
};
*/

/*
struct KVTreeAnalysis {                                    // tree analysis structure
    size_t leaf_empty;                                     // count of persisted leaves w/o keys
    size_t leaf_prealloc;                                  // count of persisted but unused leaves
    size_t leaf_total;                                     // count of all persisted leaves
    string path;                                           // path when constructed
    size_t size;                                           // actual size of persistent pool
};
*/

class KVTree : public KVEngine {                           // hybrid B+ tree engine
  public:
    //KVTree(const string& path, size_t size);               // default constructor
    KVTree();
    ~KVTree();                                             // default destructor

    string Engine() final { return ENGINE; }               // engine identifier
    KVStatus Get(int32_t limit,                            // copy value to fixed-size buffer
                 int32_t keybytes,
                 int32_t* valuebytes,
                 const char* key,
                 char* value) final;
    KVStatus Get(const string& key,                        // append value to std::string
                 string* value) final;
    KVStatus Put(const string& key,                        // copy value from std::string
                 const string& value) final;
    KVStatus Remove(const string& key) final;              // remove value for key

    //void Analyze(KVTreeAnalysis& analysis);                // report on internal state & stats
  protected:
    KVLeafNode* LeafSearch(const string& key);             // find node for key
    void LeafFillEmptySlot(KVLeafNode* leafnode,           // write first unoccupied slot found
                           uint8_t hash,
                           const string& key,
                           const string& value);
    bool LeafFillSlotForKey(KVLeafNode* leafnode,          // write slot for matching key if found
                            uint8_t hash,
                            const string& key,
                            const string& value);
    void LeafFillSpecificSlot(KVLeafNode* leafnode,        // write slot at specific index
                              uint8_t hash,
                              const string& key,
                              const string& value,
                              int slot);
    void LeafSplitFull(KVLeafNode* leafnode,               // split full leaf into two leaves
                       uint8_t hash,
                       const string& key,
                       const string& value);
    void InnerUpdateAfterSplit(KVNode* node,               // update parents after leaf split
                               unique_ptr<KVNode> newnode,
                               string* split_key);
    uint8_t PearsonHash(const char* data,                  // calculate 1-byte hash for string
                        size_t size);
    void Recover();                                        // reload state from persistent pool
  private:
    KVTree(const KVTree&);                                 // prevent copying
    void operator=(const KVTree&);                         // prevent assigning
    vector<KVLeaf*> leaves_prealloc;        // persisted but unused leaves
    //const string pmpath;                                   // path when constructed
    //pool<KVRoot> pmpool;                                   // pool for persistent root
    KVRoot* kvroot;
    //size_t pmsize;                                         // actual size of persistent pool
    unique_ptr<KVNode> tree_top;                           // pointer to uppermost inner node
  public:
    static MemoryPool<KVString> nvmpool;
};

} // namespace kvtree
} // namespace pmemkv
