WARNING = -Wall -Wshadow --pedantic
ERROR = -Wvla -Werror
GCC = gcc -std=c99 -g $(WARNING) $(ERROR)

SRCS = main.c a1.c
OBJS = $(SRCS:%.c=%.o)


a1: $(OBJS)
	$(GCC) $(OBJS) -o a1

%.o: %.c
	$(GCC) -c $< -o $@

testall: a1 test1 test2 test3 test4 test5 test6

a1: a1
	./a1 inputs/test0 > output0
	diff -w output0 expected/expected0
	
test1: a1
	./a1 inputs/test1 > output1
	diff -w output1 expected/expected1

test2: a1
	./a1 inputs/test2 > output2
	diff -w output2 expected/expected2

test3: a1
	./a1 inputs/test3 > output3
	diff -w output3 expected/expected3

test4: a1
	./a1 inputs/test4 > output4
	diff -w output4 expected/expected4

test5: a1
	./a1 inputs/test5 > output5
	diff -w output5 expected/expected5

clean: # remove all machine generated files
	rm -f a1 *.o output* *~