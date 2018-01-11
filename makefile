INCLUDE = $(shell pkg-config --cflags opencv)
LIBS    = $(shell pkg-config --libs   opencv)

all:qpkcftrack.cpp 
	g++ -Wall -I $(INCLUDE) qpkcftrack.cpp -o qpkcftrack $(LIBS) -lpthread 
clean:
	rm qpkcftrack
