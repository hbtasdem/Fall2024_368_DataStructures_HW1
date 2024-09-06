WARNING = -Wall -Wshadow --pedantic
ERROR = -Wvla -Werror
GCC = gcc -std=c99 -g $(WARNING) $(ERROR)

SRCS = main.c a1.c
OBJS = $(SRCS:%.c=%.o)

a1: $(OBJS)
	$(GCC) $(OBJS) -o a1

%.o: %.c
	$(GCC) -c $< -o $@

.PHONY: clean test testall

test: a1
	./a1

test_to_text: a1
	./a1 > results.txt

testall: test1 test2 test3 test4

test1: a1
	./a1 < inputs/test1 > output1
	diff -u output1 expected/expected1

test2: a1
	./a1 < inputs/test2 > output2
	diff -u output2 expected/expected2

test3: a1
	./a1 < inputs/test3 > output3
	diff -u output3 expected/expected3

test4: a1
	./a1 < inputs/test4 > output4
	diff -u output4 expected/expected4

clean: 
	rm -f a1 *.o output* *~
