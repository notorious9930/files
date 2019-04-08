#https://www.youtube.com/watch?v=aw9wHbFTnAQ 
CFLAGS=-g -std=c++14 -Wall
CC=g++
	
compare:
	@printf "\n\033[33mComparing file1 and file2 with 'hexdump' program...\n\033[0m"
	@printf "\nfile1:\n"
	@hexdump -ve '/1 "%x " ' data/file1 | head -c 29
	@printf "\n\nfile2:\n"
	@hexdump -ve '/1 "%x " ' data/file2 | head -c 108
	@printf "\n\n(Only the first 10 numbers shown IN BOTH CASES)\n\n\n"
	@printf "..............................................................\n"
	@printf "\n\033[36mComparing file1 and file2 with 'cat' program...\n\033[0m"
	@printf "\nfile1:\n"
	@cat data/file1 | head -c 29
	@printf "\n\nfile2:\n"
	@cat data/file2 | head 
	@echo

convert:
	@printf "\n\033[33mCompiling convert program...\n\033[0m"
	$(CC) $(CFLAGS) src/convert.cpp -o bin/convert.out 
	@printf "\nRun by typing '\033[1mmake run-convert\033[0m'\n\n"

run-convert: #this is actually more typing (yikes)
	@bin/convert.out	

filter:
	@printf "\n\033[32mCompiling filter program...\n\033[0m"
	$(CC) $(CFLAGS) src/filter.cpp -o bin/filter.out 
	@printf "\nRun by typing '\033[1mmake run-filter\033[0m'\n\n"

run-filter: 
	@bin/filter.out	

