CXX = g++
CXXFLAGS = -c -O3 -Wall -Wextra -Wpedantic
OBJ = Circle.o Rectangle.o Shape.o Square.o main.o

all: $(OBJ)
	$(CXX) $(OBJ) -o output

Circle.o: Circle.cpp Circle.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

Rectangle.o: Rectangle.cpp Rectangle.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

Shape.o: Shape.cpp Shape.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

Square.o: Square.cpp Square.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

main.o: main.cpp *.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm *.o output


