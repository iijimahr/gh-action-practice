SOURCES := test.cpp
TARGET := ./test.out

.PHONY: all
all: $(TARGET)

.PHONY: check
check: $(TARGET)
	./test.out

.PHONY: clean
clean:
	rm -f *.out *.o *~

$(TARGET): $(SOURCES)
	g++ -Wall -std=c++17 -o $@ $^
