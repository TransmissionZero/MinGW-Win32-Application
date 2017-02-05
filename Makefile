# This Makefile will build the MinGW Win32 application.

# Object files to create for the executable
OBJS = obj/winmain.o obj/callbacks.o obj/resource.o

# Warnings to be raised by the C compiler
WARNS = -Wall

# Names of tools to use when building
CC = gcc
RC = windres

# Compiler flags
CFLAGS = -O2 -std=c99 -D _WIN32_IE=0x0500 -D WINVER=0x500 ${WARNS} -Iinclude

# Compile Unicode build unless CHARSET=ANSI
ifneq (${CHARSET}, ANSI)
  CFLAGS += -D UNICODE -D _UNICODE
endif

# Linker flags
LDFLAGS = -s -lcomctl32 -Wl,--subsystem,windows

.PHONY: all clean

# Build executable by default
all: bin/Win32App.exe

# Delete all build output
clean:
	if exist bin\*  del /q bin\*
	if exist obj\*  del /q obj\*

# Create build output directories if they don't exist
bin obj:
	@if not exist "$@" mkdir "$@"

# Compile object files for executable
obj/%.o: src/%.c | obj
	${CC} ${CFLAGS} -c "$<" -o "$@"

# Build the resources
obj/resource.o: res/resource.rc res/Application.manifest res/Application.ico include/resource.h | obj
	${RC} -I.\include -I.\res -i "$<" -o "$@"

# Build the exectuable
bin/Win32App.exe: ${OBJS} | bin
	${CC} -o "$@" ${OBJS} ${LDFLAGS}

# C header dependencies
obj/callbacks.o: include/callbacks.h include/resource.h
obj/winmain.o:   include/callbacks.h include/resource.h
