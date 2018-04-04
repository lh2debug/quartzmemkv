# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# Utility rule file for gtest.

# Include the progress variables for this target.
include CMakeFiles/gtest.dir/progress.make

CMakeFiles/gtest: CMakeFiles/gtest-complete


CMakeFiles/gtest-complete: gtest/src/gtest-stamp/gtest-install
CMakeFiles/gtest-complete: gtest/src/gtest-stamp/gtest-mkdir
CMakeFiles/gtest-complete: gtest/src/gtest-stamp/gtest-download
CMakeFiles/gtest-complete: gtest/src/gtest-stamp/gtest-update
CMakeFiles/gtest-complete: gtest/src/gtest-stamp/gtest-patch
CMakeFiles/gtest-complete: gtest/src/gtest-stamp/gtest-configure
CMakeFiles/gtest-complete: gtest/src/gtest-stamp/gtest-build
CMakeFiles/gtest-complete: gtest/src/gtest-stamp/gtest-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/lab505/app_source/quartzmemkv2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'gtest'"
	/usr/local/bin/cmake -E make_directory /root/lab505/app_source/quartzmemkv2/CMakeFiles
	/usr/local/bin/cmake -E touch /root/lab505/app_source/quartzmemkv2/CMakeFiles/gtest-complete
	/usr/local/bin/cmake -E touch /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-stamp/gtest-done

gtest/src/gtest-stamp/gtest-install: gtest/src/gtest-stamp/gtest-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/lab505/app_source/quartzmemkv2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'gtest'"
	cd /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-build && /usr/local/bin/cmake -E echo_append
	cd /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-build && /usr/local/bin/cmake -E touch /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-stamp/gtest-install

gtest/src/gtest-stamp/gtest-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/lab505/app_source/quartzmemkv2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'gtest'"
	/usr/local/bin/cmake -E make_directory /root/lab505/app_source/quartzmemkv2/gtest/src/gtest
	/usr/local/bin/cmake -E make_directory /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-build
	/usr/local/bin/cmake -E make_directory /root/lab505/app_source/quartzmemkv2/gtest
	/usr/local/bin/cmake -E make_directory /root/lab505/app_source/quartzmemkv2/gtest/tmp
	/usr/local/bin/cmake -E make_directory /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-stamp
	/usr/local/bin/cmake -E make_directory /root/lab505/app_source/quartzmemkv2
	/usr/local/bin/cmake -E touch /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-stamp/gtest-mkdir

gtest/src/gtest-stamp/gtest-download: gtest/src/gtest-stamp/gtest-urlinfo.txt
gtest/src/gtest-stamp/gtest-download: gtest/src/gtest-stamp/gtest-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/lab505/app_source/quartzmemkv2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'gtest'"
	cd /root/lab505/app_source/quartzmemkv2/gtest/src && /usr/local/bin/cmake -P /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-stamp/download-gtest.cmake
	cd /root/lab505/app_source/quartzmemkv2/gtest/src && /usr/local/bin/cmake -P /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-stamp/verify-gtest.cmake
	cd /root/lab505/app_source/quartzmemkv2/gtest/src && /usr/local/bin/cmake -P /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-stamp/extract-gtest.cmake
	cd /root/lab505/app_source/quartzmemkv2/gtest/src && /usr/local/bin/cmake -E touch /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-stamp/gtest-download

gtest/src/gtest-stamp/gtest-update: gtest/src/gtest-stamp/gtest-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/lab505/app_source/quartzmemkv2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'gtest'"
	/usr/local/bin/cmake -E echo_append
	/usr/local/bin/cmake -E touch /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-stamp/gtest-update

gtest/src/gtest-stamp/gtest-patch: gtest/src/gtest-stamp/gtest-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/lab505/app_source/quartzmemkv2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'gtest'"
	/usr/local/bin/cmake -E echo_append
	/usr/local/bin/cmake -E touch /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-stamp/gtest-patch

gtest/src/gtest-stamp/gtest-configure: gtest/tmp/gtest-cfgcmd.txt
gtest/src/gtest-stamp/gtest-configure: gtest/src/gtest-stamp/gtest-update
gtest/src/gtest-stamp/gtest-configure: gtest/src/gtest-stamp/gtest-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/lab505/app_source/quartzmemkv2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'gtest'"
	cd /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-build && /usr/local/bin/cmake -DCMAKE_CXX_COMPILER=/usr/bin/c++ "-GUnix Makefiles" /root/lab505/app_source/quartzmemkv2/gtest/src/gtest
	cd /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-build && /usr/local/bin/cmake -E touch /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-stamp/gtest-configure

gtest/src/gtest-stamp/gtest-build: gtest/src/gtest-stamp/gtest-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/lab505/app_source/quartzmemkv2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'gtest'"
	cd /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-build && $(MAKE)
	cd /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-build && /usr/local/bin/cmake -E touch /root/lab505/app_source/quartzmemkv2/gtest/src/gtest-stamp/gtest-build

gtest: CMakeFiles/gtest
gtest: CMakeFiles/gtest-complete
gtest: gtest/src/gtest-stamp/gtest-install
gtest: gtest/src/gtest-stamp/gtest-mkdir
gtest: gtest/src/gtest-stamp/gtest-download
gtest: gtest/src/gtest-stamp/gtest-update
gtest: gtest/src/gtest-stamp/gtest-patch
gtest: gtest/src/gtest-stamp/gtest-configure
gtest: gtest/src/gtest-stamp/gtest-build
gtest: CMakeFiles/gtest.dir/build.make

.PHONY : gtest

# Rule to build all files generated by this target.
CMakeFiles/gtest.dir/build: gtest

.PHONY : CMakeFiles/gtest.dir/build

CMakeFiles/gtest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gtest.dir/clean

CMakeFiles/gtest.dir/depend:
	cd /root/lab505/app_source/quartzmemkv2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/lab505/app_source/quartzmemkv2 /root/lab505/app_source/quartzmemkv2 /root/lab505/app_source/quartzmemkv2 /root/lab505/app_source/quartzmemkv2 /root/lab505/app_source/quartzmemkv2/CMakeFiles/gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gtest.dir/depend

