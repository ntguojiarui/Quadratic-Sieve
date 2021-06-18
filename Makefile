# -std=gnu++0x -Wall -pedantic -g -O2


CXXFLAGS=-O2 -std=gnu++0x -Wall -pedantic -g
LDFLAGS=-O2
LIBS=-lgmpxx -lgmp
all: qs

qs: qs.cpp qs.o
	$(CXX) $(LDFLAGS) -o qs qs.o $(LIBS)

qs.o: qs.cpp matrix.h
	$(CXX) -c $(CXXFLAGS) -o qs.o qs.cpp


