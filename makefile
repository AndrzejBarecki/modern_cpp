CXX = g++
CXXFLAGS = -c -O3 -Wall -Wextra -Wpedantic
OBJ = Circle.o Rectangle.o Shape.o Square.o main.o

all: $(OBJ)
	$(CXX) $^ -o output

%.o: %.cpp %.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm *.o output


