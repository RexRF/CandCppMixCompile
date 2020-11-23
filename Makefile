CXX := g++
CPATH := src/
ROOT_DIR := $(shell pwd)/
OBJ_DIR := out/

SRC_FILE := $(wildcard $(ROOT_DIR)$(CPATH)*.c*)
#SRC_OBJ = $(patsubst %.c, %.o, $(wildcard $(ROOT_DIR)$(OBJ_DIR)*.c)) $(patsubst %.cpp, %.o, $(wildcard $(ROOT_DIR)$(OBJ_DIR)*.cpp))
OUTPUT_NAME := main

all: makeObjectFile
	@$(CXX) -o $(OUTPUT_NAME) $(wildcard $(ROOT_DIR)$(OBJ_DIR)*.o)

include ./include/Makefile

clean: cleanObjectFile
	@$(RM) -f $(OUTPUT_NAME)
