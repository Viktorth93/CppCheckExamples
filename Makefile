CC=g++ -std=c++0x -g
OBJS=shortTest.o
TARGET=shortTest
#HEADERS=PiPiee.h ReactIdent.h AsymmUtil.h
ROOTLIBS=`root-config  --libs` 
MORELIBS=-lGeom

.SUFFIXES   : .o .cpp
.SUFFIXES   : .o .C

.cpp.o :
	$(CC) $(FFLAGS) `root-config  --cflags` -c $<

.C.o :
	$(CC) $(FFLAGS) `root-config  --cflags` -c $<


all: $(OBJS) $(HEADERS)
	$(CC)  $(CPPFLAGS) -o $(TARGET) $(OBJS) $(ROOTINC) $(ROOTLIBS) $(MORELIBS)
clean:
	-rm -rf *.o *.d $(TARGET) 

	
