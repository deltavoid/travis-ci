


MAIN_NAME := bin/main
MAIN_SRCS := src/main.c


.PHONY: all build  run  clean
all: run clean

build: $(MAIN_NAME)

$(MAIN_NAME): $(MAIN_SRCS)
#	-mkdir bin
	gcc -o $@ $^


run: build
	$(MAIN_NAME)


clean:
	rm $(MAIN_NAME)