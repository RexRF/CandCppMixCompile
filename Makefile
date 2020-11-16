CXX = g++

MAIN_SRC = main.c
FUNCTION_SRC = function.cpp

MIX_SRC_OBJ = ${MAIN_SRC:.c=.o} ${FUNCTION_SRC:.cpp=.o}


OUTPUT_NAME = main

.SILENT:
all: 
	$(CXX) -c $(MAIN_SRC) $(FUNCTION_SRC)

	$(CXX) -o $(OUTPUT_NAME) $(MIX_SRC_OBJ)

clean:
	$(RM) -f $(MIX_SRC_OBJ)
	$(RM) -f $(OUTPUT_NAME)
