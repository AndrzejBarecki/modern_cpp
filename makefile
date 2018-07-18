CXX = g++
CXXFLAGS = -Wall -Wextra - Wpedantic
OBJ = *.cpp *.hpp

modern: $(OBJ)
	$(CXX) $(OBJ) -O3 -o modern

moderndebug:  $(OBJ)
	$(CXX) $(OBJ) -g -o moderndebug

clean:
	rm *.o modern moderndebug
	

