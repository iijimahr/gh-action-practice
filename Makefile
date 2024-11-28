SOURCES := test.cpp
TARGET := ./test.out

.PHONY: all
all: $(TARGET)

.PHONY: check
check: $(TARGET)
	./test.out

$(TARGET): $(SOURCES)
	g++ -Wall -std=c++17 -o $@ $^
