# GCC paths
CC = gcc
CXX = g++
LINKER_DYNAMIC = g++
LINKER_STATIC = g++
RESOURCE_COMPILER = windres

SRCDIR = ./src
OBJDIR = ./obj
BINDIR = ./bin

INCLUDE=
COMMONFLAGS=-Wall -g
CFLAFS=-std=c17
CXXFLAGS=-std=c++17
DEFINES=

LDINCLUDE=
LDFLAG=-static
LDLIB=

BIN=sample_project.exe

CSRCS = $(wildcard $(SRCDIR)/*.c)
CXXSRCS = $(wildcard $(SRCDIR)/*.cpp)

COBJS = $(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%_c.o, $(CSRCS))
CXXOBJS = $(patsubst $(SRCDIR)/%.cpp, $(OBJDIR)/%_cpp.o, $(CXXSRCS))


all: $(BINDIR)/$(BIN)

run: $(BINDIR)/$(BIN)
	"$(BINDIR)/$(BIN)"

$(BINDIR)/$(BIN): $(COBJS) $(CXXOBJS)
	$(CXX) $(LDFLAG) $(LDINCLUDE) -o $@ $^ $(LDLIB)

$(OBJDIR)/%_cpp.o: $(SRCDIR)/%.cpp
	$(CXX) $(COMMONFLAGS) $(CXXFLAGS) $(DEFINES) $(INCLUDE) -c -o $@ $<


$(OBJDIR)/%_c.o: $(SRCDIR)/%.c
	$(CC) $(COMMONFLAGS) $(CFLAFS) $(DEFINES) $(INCLUDE) -c -o $@ $<


