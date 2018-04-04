# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/lab505/app_source/quartzmemkv2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/lab505/app_source/quartzmemkv2

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /root/lab505/app_source/quartzmemkv2/CMakeFiles /root/lab505/app_source/quartzmemkv2/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /root/lab505/app_source/quartzmemkv2/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named pmemkv_bench

# Build rule for target.
pmemkv_bench: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 pmemkv_bench
.PHONY : pmemkv_bench

# fast build rule for target.
pmemkv_bench/fast:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/build
.PHONY : pmemkv_bench/fast

#=============================================================================
# Target rules for targets named pmemkv_test

# Build rule for target.
pmemkv_test: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 pmemkv_test
.PHONY : pmemkv_test

# fast build rule for target.
pmemkv_test/fast:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/build
.PHONY : pmemkv_test/fast

#=============================================================================
# Target rules for targets named pmemkv_example

# Build rule for target.
pmemkv_example: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 pmemkv_example
.PHONY : pmemkv_example

# fast build rule for target.
pmemkv_example/fast:
	$(MAKE) -f CMakeFiles/pmemkv_example.dir/build.make CMakeFiles/pmemkv_example.dir/build
.PHONY : pmemkv_example/fast

#=============================================================================
# Target rules for targets named pmemkv

# Build rule for target.
pmemkv: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 pmemkv
.PHONY : pmemkv

# fast build rule for target.
pmemkv/fast:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/build
.PHONY : pmemkv/fast

#=============================================================================
# Target rules for targets named gtest

# Build rule for target.
gtest: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 gtest
.PHONY : gtest

# fast build rule for target.
gtest/fast:
	$(MAKE) -f CMakeFiles/gtest.dir/build.make CMakeFiles/gtest.dir/build
.PHONY : gtest/fast

leveldb/port/port_posix.o: leveldb/port/port_posix.cc.o

.PHONY : leveldb/port/port_posix.o

# target to build an object file
leveldb/port/port_posix.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.o
.PHONY : leveldb/port/port_posix.cc.o

leveldb/port/port_posix.i: leveldb/port/port_posix.cc.i

.PHONY : leveldb/port/port_posix.i

# target to preprocess a source file
leveldb/port/port_posix.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.i
.PHONY : leveldb/port/port_posix.cc.i

leveldb/port/port_posix.s: leveldb/port/port_posix.cc.s

.PHONY : leveldb/port/port_posix.s

# target to generate assembly for a file
leveldb/port/port_posix.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/port/port_posix.cc.s
.PHONY : leveldb/port/port_posix.cc.s

leveldb/util/env.o: leveldb/util/env.cc.o

.PHONY : leveldb/util/env.o

# target to build an object file
leveldb/util/env.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.o
.PHONY : leveldb/util/env.cc.o

leveldb/util/env.i: leveldb/util/env.cc.i

.PHONY : leveldb/util/env.i

# target to preprocess a source file
leveldb/util/env.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.i
.PHONY : leveldb/util/env.cc.i

leveldb/util/env.s: leveldb/util/env.cc.s

.PHONY : leveldb/util/env.s

# target to generate assembly for a file
leveldb/util/env.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/env.cc.s
.PHONY : leveldb/util/env.cc.s

leveldb/util/env_posix.o: leveldb/util/env_posix.cc.o

.PHONY : leveldb/util/env_posix.o

# target to build an object file
leveldb/util/env_posix.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.o
.PHONY : leveldb/util/env_posix.cc.o

leveldb/util/env_posix.i: leveldb/util/env_posix.cc.i

.PHONY : leveldb/util/env_posix.i

# target to preprocess a source file
leveldb/util/env_posix.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.i
.PHONY : leveldb/util/env_posix.cc.i

leveldb/util/env_posix.s: leveldb/util/env_posix.cc.s

.PHONY : leveldb/util/env_posix.s

# target to generate assembly for a file
leveldb/util/env_posix.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/env_posix.cc.s
.PHONY : leveldb/util/env_posix.cc.s

leveldb/util/histogram.o: leveldb/util/histogram.cc.o

.PHONY : leveldb/util/histogram.o

# target to build an object file
leveldb/util/histogram.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.o
.PHONY : leveldb/util/histogram.cc.o

leveldb/util/histogram.i: leveldb/util/histogram.cc.i

.PHONY : leveldb/util/histogram.i

# target to preprocess a source file
leveldb/util/histogram.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.i
.PHONY : leveldb/util/histogram.cc.i

leveldb/util/histogram.s: leveldb/util/histogram.cc.s

.PHONY : leveldb/util/histogram.s

# target to generate assembly for a file
leveldb/util/histogram.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/histogram.cc.s
.PHONY : leveldb/util/histogram.cc.s

leveldb/util/logging.o: leveldb/util/logging.cc.o

.PHONY : leveldb/util/logging.o

# target to build an object file
leveldb/util/logging.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.o
.PHONY : leveldb/util/logging.cc.o

leveldb/util/logging.i: leveldb/util/logging.cc.i

.PHONY : leveldb/util/logging.i

# target to preprocess a source file
leveldb/util/logging.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.i
.PHONY : leveldb/util/logging.cc.i

leveldb/util/logging.s: leveldb/util/logging.cc.s

.PHONY : leveldb/util/logging.s

# target to generate assembly for a file
leveldb/util/logging.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/logging.cc.s
.PHONY : leveldb/util/logging.cc.s

leveldb/util/status.o: leveldb/util/status.cc.o

.PHONY : leveldb/util/status.o

# target to build an object file
leveldb/util/status.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.o
.PHONY : leveldb/util/status.cc.o

leveldb/util/status.i: leveldb/util/status.cc.i

.PHONY : leveldb/util/status.i

# target to preprocess a source file
leveldb/util/status.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.i
.PHONY : leveldb/util/status.cc.i

leveldb/util/status.s: leveldb/util/status.cc.s

.PHONY : leveldb/util/status.s

# target to generate assembly for a file
leveldb/util/status.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/leveldb/util/status.cc.s
.PHONY : leveldb/util/status.cc.s

src/engines/blackhole.o: src/engines/blackhole.cc.o

.PHONY : src/engines/blackhole.o

# target to build an object file
src/engines/blackhole.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/engines/blackhole.cc.o
.PHONY : src/engines/blackhole.cc.o

src/engines/blackhole.i: src/engines/blackhole.cc.i

.PHONY : src/engines/blackhole.i

# target to preprocess a source file
src/engines/blackhole.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/engines/blackhole.cc.i
.PHONY : src/engines/blackhole.cc.i

src/engines/blackhole.s: src/engines/blackhole.cc.s

.PHONY : src/engines/blackhole.s

# target to generate assembly for a file
src/engines/blackhole.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/engines/blackhole.cc.s
.PHONY : src/engines/blackhole.cc.s

src/engines/kvtree.o: src/engines/kvtree.cc.o

.PHONY : src/engines/kvtree.o

# target to build an object file
src/engines/kvtree.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/engines/kvtree.cc.o
.PHONY : src/engines/kvtree.cc.o

src/engines/kvtree.i: src/engines/kvtree.cc.i

.PHONY : src/engines/kvtree.i

# target to preprocess a source file
src/engines/kvtree.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/engines/kvtree.cc.i
.PHONY : src/engines/kvtree.cc.i

src/engines/kvtree.s: src/engines/kvtree.cc.s

.PHONY : src/engines/kvtree.s

# target to generate assembly for a file
src/engines/kvtree.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/engines/kvtree.cc.s
.PHONY : src/engines/kvtree.cc.s

src/engines/kvtree2.o: src/engines/kvtree2.cc.o

.PHONY : src/engines/kvtree2.o

# target to build an object file
src/engines/kvtree2.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/engines/kvtree2.cc.o
.PHONY : src/engines/kvtree2.cc.o

src/engines/kvtree2.i: src/engines/kvtree2.cc.i

.PHONY : src/engines/kvtree2.i

# target to preprocess a source file
src/engines/kvtree2.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/engines/kvtree2.cc.i
.PHONY : src/engines/kvtree2.cc.i

src/engines/kvtree2.s: src/engines/kvtree2.cc.s

.PHONY : src/engines/kvtree2.s

# target to generate assembly for a file
src/engines/kvtree2.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/engines/kvtree2.cc.s
.PHONY : src/engines/kvtree2.cc.s

src/engines/versioned_b_tree.o: src/engines/versioned_b_tree.cc.o

.PHONY : src/engines/versioned_b_tree.o

# target to build an object file
src/engines/versioned_b_tree.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/engines/versioned_b_tree.cc.o
.PHONY : src/engines/versioned_b_tree.cc.o

src/engines/versioned_b_tree.i: src/engines/versioned_b_tree.cc.i

.PHONY : src/engines/versioned_b_tree.i

# target to preprocess a source file
src/engines/versioned_b_tree.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/engines/versioned_b_tree.cc.i
.PHONY : src/engines/versioned_b_tree.cc.i

src/engines/versioned_b_tree.s: src/engines/versioned_b_tree.cc.s

.PHONY : src/engines/versioned_b_tree.s

# target to generate assembly for a file
src/engines/versioned_b_tree.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/engines/versioned_b_tree.cc.s
.PHONY : src/engines/versioned_b_tree.cc.s

src/pmemkv.o: src/pmemkv.cc.o

.PHONY : src/pmemkv.o

# target to build an object file
src/pmemkv.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/pmemkv.cc.o
.PHONY : src/pmemkv.cc.o

src/pmemkv.i: src/pmemkv.cc.i

.PHONY : src/pmemkv.i

# target to preprocess a source file
src/pmemkv.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/pmemkv.cc.i
.PHONY : src/pmemkv.cc.i

src/pmemkv.s: src/pmemkv.cc.s

.PHONY : src/pmemkv.s

# target to generate assembly for a file
src/pmemkv.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv.dir/build.make CMakeFiles/pmemkv.dir/src/pmemkv.cc.s
.PHONY : src/pmemkv.cc.s

src/pmemkv_bench.o: src/pmemkv_bench.cc.o

.PHONY : src/pmemkv_bench.o

# target to build an object file
src/pmemkv_bench.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.o
.PHONY : src/pmemkv_bench.cc.o

src/pmemkv_bench.i: src/pmemkv_bench.cc.i

.PHONY : src/pmemkv_bench.i

# target to preprocess a source file
src/pmemkv_bench.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.i
.PHONY : src/pmemkv_bench.cc.i

src/pmemkv_bench.s: src/pmemkv_bench.cc.s

.PHONY : src/pmemkv_bench.s

# target to generate assembly for a file
src/pmemkv_bench.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_bench.dir/build.make CMakeFiles/pmemkv_bench.dir/src/pmemkv_bench.cc.s
.PHONY : src/pmemkv_bench.cc.s

src/pmemkv_example.o: src/pmemkv_example.cc.o

.PHONY : src/pmemkv_example.o

# target to build an object file
src/pmemkv_example.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_example.dir/build.make CMakeFiles/pmemkv_example.dir/src/pmemkv_example.cc.o
.PHONY : src/pmemkv_example.cc.o

src/pmemkv_example.i: src/pmemkv_example.cc.i

.PHONY : src/pmemkv_example.i

# target to preprocess a source file
src/pmemkv_example.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_example.dir/build.make CMakeFiles/pmemkv_example.dir/src/pmemkv_example.cc.i
.PHONY : src/pmemkv_example.cc.i

src/pmemkv_example.s: src/pmemkv_example.cc.s

.PHONY : src/pmemkv_example.s

# target to generate assembly for a file
src/pmemkv_example.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_example.dir/build.make CMakeFiles/pmemkv_example.dir/src/pmemkv_example.cc.s
.PHONY : src/pmemkv_example.cc.s

tests/engines/blackhole_test.o: tests/engines/blackhole_test.cc.o

.PHONY : tests/engines/blackhole_test.o

# target to build an object file
tests/engines/blackhole_test.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/engines/blackhole_test.cc.o
.PHONY : tests/engines/blackhole_test.cc.o

tests/engines/blackhole_test.i: tests/engines/blackhole_test.cc.i

.PHONY : tests/engines/blackhole_test.i

# target to preprocess a source file
tests/engines/blackhole_test.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/engines/blackhole_test.cc.i
.PHONY : tests/engines/blackhole_test.cc.i

tests/engines/blackhole_test.s: tests/engines/blackhole_test.cc.s

.PHONY : tests/engines/blackhole_test.s

# target to generate assembly for a file
tests/engines/blackhole_test.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/engines/blackhole_test.cc.s
.PHONY : tests/engines/blackhole_test.cc.s

tests/engines/kvtree_test.o: tests/engines/kvtree_test.cc.o

.PHONY : tests/engines/kvtree_test.o

# target to build an object file
tests/engines/kvtree_test.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/engines/kvtree_test.cc.o
.PHONY : tests/engines/kvtree_test.cc.o

tests/engines/kvtree_test.i: tests/engines/kvtree_test.cc.i

.PHONY : tests/engines/kvtree_test.i

# target to preprocess a source file
tests/engines/kvtree_test.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/engines/kvtree_test.cc.i
.PHONY : tests/engines/kvtree_test.cc.i

tests/engines/kvtree_test.s: tests/engines/kvtree_test.cc.s

.PHONY : tests/engines/kvtree_test.s

# target to generate assembly for a file
tests/engines/kvtree_test.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/engines/kvtree_test.cc.s
.PHONY : tests/engines/kvtree_test.cc.s

tests/engines/versioned_b_tree_test.o: tests/engines/versioned_b_tree_test.cc.o

.PHONY : tests/engines/versioned_b_tree_test.o

# target to build an object file
tests/engines/versioned_b_tree_test.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/engines/versioned_b_tree_test.cc.o
.PHONY : tests/engines/versioned_b_tree_test.cc.o

tests/engines/versioned_b_tree_test.i: tests/engines/versioned_b_tree_test.cc.i

.PHONY : tests/engines/versioned_b_tree_test.i

# target to preprocess a source file
tests/engines/versioned_b_tree_test.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/engines/versioned_b_tree_test.cc.i
.PHONY : tests/engines/versioned_b_tree_test.cc.i

tests/engines/versioned_b_tree_test.s: tests/engines/versioned_b_tree_test.cc.s

.PHONY : tests/engines/versioned_b_tree_test.s

# target to generate assembly for a file
tests/engines/versioned_b_tree_test.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/engines/versioned_b_tree_test.cc.s
.PHONY : tests/engines/versioned_b_tree_test.cc.s

tests/mock_tx_alloc.o: tests/mock_tx_alloc.cc.o

.PHONY : tests/mock_tx_alloc.o

# target to build an object file
tests/mock_tx_alloc.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/mock_tx_alloc.cc.o
.PHONY : tests/mock_tx_alloc.cc.o

tests/mock_tx_alloc.i: tests/mock_tx_alloc.cc.i

.PHONY : tests/mock_tx_alloc.i

# target to preprocess a source file
tests/mock_tx_alloc.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/mock_tx_alloc.cc.i
.PHONY : tests/mock_tx_alloc.cc.i

tests/mock_tx_alloc.s: tests/mock_tx_alloc.cc.s

.PHONY : tests/mock_tx_alloc.s

# target to generate assembly for a file
tests/mock_tx_alloc.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/mock_tx_alloc.cc.s
.PHONY : tests/mock_tx_alloc.cc.s

tests/pmemkv_test.o: tests/pmemkv_test.cc.o

.PHONY : tests/pmemkv_test.o

# target to build an object file
tests/pmemkv_test.cc.o:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/pmemkv_test.cc.o
.PHONY : tests/pmemkv_test.cc.o

tests/pmemkv_test.i: tests/pmemkv_test.cc.i

.PHONY : tests/pmemkv_test.i

# target to preprocess a source file
tests/pmemkv_test.cc.i:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/pmemkv_test.cc.i
.PHONY : tests/pmemkv_test.cc.i

tests/pmemkv_test.s: tests/pmemkv_test.cc.s

.PHONY : tests/pmemkv_test.s

# target to generate assembly for a file
tests/pmemkv_test.cc.s:
	$(MAKE) -f CMakeFiles/pmemkv_test.dir/build.make CMakeFiles/pmemkv_test.dir/tests/pmemkv_test.cc.s
.PHONY : tests/pmemkv_test.cc.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... pmemkv_bench"
	@echo "... pmemkv_test"
	@echo "... pmemkv_example"
	@echo "... pmemkv"
	@echo "... rebuild_cache"
	@echo "... gtest"
	@echo "... leveldb/port/port_posix.o"
	@echo "... leveldb/port/port_posix.i"
	@echo "... leveldb/port/port_posix.s"
	@echo "... leveldb/util/env.o"
	@echo "... leveldb/util/env.i"
	@echo "... leveldb/util/env.s"
	@echo "... leveldb/util/env_posix.o"
	@echo "... leveldb/util/env_posix.i"
	@echo "... leveldb/util/env_posix.s"
	@echo "... leveldb/util/histogram.o"
	@echo "... leveldb/util/histogram.i"
	@echo "... leveldb/util/histogram.s"
	@echo "... leveldb/util/logging.o"
	@echo "... leveldb/util/logging.i"
	@echo "... leveldb/util/logging.s"
	@echo "... leveldb/util/status.o"
	@echo "... leveldb/util/status.i"
	@echo "... leveldb/util/status.s"
	@echo "... src/engines/blackhole.o"
	@echo "... src/engines/blackhole.i"
	@echo "... src/engines/blackhole.s"
	@echo "... src/engines/kvtree.o"
	@echo "... src/engines/kvtree.i"
	@echo "... src/engines/kvtree.s"
	@echo "... src/engines/kvtree2.o"
	@echo "... src/engines/kvtree2.i"
	@echo "... src/engines/kvtree2.s"
	@echo "... src/engines/versioned_b_tree.o"
	@echo "... src/engines/versioned_b_tree.i"
	@echo "... src/engines/versioned_b_tree.s"
	@echo "... src/pmemkv.o"
	@echo "... src/pmemkv.i"
	@echo "... src/pmemkv.s"
	@echo "... src/pmemkv_bench.o"
	@echo "... src/pmemkv_bench.i"
	@echo "... src/pmemkv_bench.s"
	@echo "... src/pmemkv_example.o"
	@echo "... src/pmemkv_example.i"
	@echo "... src/pmemkv_example.s"
	@echo "... tests/engines/blackhole_test.o"
	@echo "... tests/engines/blackhole_test.i"
	@echo "... tests/engines/blackhole_test.s"
	@echo "... tests/engines/kvtree_test.o"
	@echo "... tests/engines/kvtree_test.i"
	@echo "... tests/engines/kvtree_test.s"
	@echo "... tests/engines/versioned_b_tree_test.o"
	@echo "... tests/engines/versioned_b_tree_test.i"
	@echo "... tests/engines/versioned_b_tree_test.s"
	@echo "... tests/mock_tx_alloc.o"
	@echo "... tests/mock_tx_alloc.i"
	@echo "... tests/mock_tx_alloc.s"
	@echo "... tests/pmemkv_test.o"
	@echo "... tests/pmemkv_test.i"
	@echo "... tests/pmemkv_test.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

