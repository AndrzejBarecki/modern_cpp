CXX = g++
CXXFLAGS = -c -O3 -Wall -Wextra -Wpedantic
OBJ := $(patsubst %.cpp,%.o,$(wildcard *.cpp))

all: $(OBJ)
	$(CXX) $^ -o output

%.o: %.cpp %.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm *.o output


