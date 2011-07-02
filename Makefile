# This Makefile will build the MinGW Win32 test application.

HEADERS = include/callbacks.h include/resource.h
OBJS =	obj/winmain.o obj/callbacks.o obj/resource.o
INCLUDE_DIRS = -I.\include

WARNS = -Wall

CC = gcc
CFLAGS = -O3 -std=c99 -D UNICODE -D _UNICODE -D _WIN32_IE=0x0500 -D WINVER=0x500 ${WARNS}
LDFLAGS = -s -lcomctl32 -Wl,--subsystem,windows
RC = windres

all : MinGW\ Win32.exe

MinGW\ Win32.exe : ${OBJS}
	${CC} -o "$@" ${OBJS} ${LDFLAGS}

clean :
	del obj\*.o "MinGW Win32.exe"

obj/%.o : src/%.c ${HEADERS}
	${CC} ${CFLAGS} ${INCLUDE_DIRS} -c $< -o $@

obj/resource.o : res/resource.rc res/Application.manifest res/Application.ico include/resource.h
	${RC} -I.\include -I.\res -i $< -o $@