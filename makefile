CXX = g++
CXXFLAGS = -c -O3 -Wall -Wextra -Wpedantic
OBJ := $(patsubst %.cpp,%.o,$(wildcard *.cpp))
TARGET = my_output.out

$(TARGET): $(OBJ)
	$(CXX) $^ -o $(TARGET)

%.o: %.cpp %.hpp
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm *.o $(TARGET)


