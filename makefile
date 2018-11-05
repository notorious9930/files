#https://www.youtube.com/watch?v=aw9wHbFTnAQ 
CFLAGS=-g -std=c++14 -Wall

all: screen text bin 
	

screen:
	@printf "\n\033[33mCompiling screen output program...\n\033[0m"
	g++ $(CFLAGS) screen.cpp -o screen.out 
	@printf "\nRun by typing '\033[1mmake run-screen\033[0m'\n\n"

run-screen: #this is actually more typing (yikes)
	./screen.out	

text:
	@printf "\n\033[32mCompiling text output program...\n\033[0m"
	g++ $(CFLAGS) text.cpp -o text.out 
	@printf "\nRun by typing '\033[1mmake run-text\033[0m'\n\n"

run-text: 
	./text.out	

bin:
	@printf "\n\033[36mCompiling binary output program...\n\033[0m"
	g++ $(CFLAGS) binary.cpp -o binary.out 
	@printf "\nRun by typing '\033[1mmake run-bin\033[0m'\n\n"

run-bin: 
	./binary.out	

clean:
	@rm -f *.out
	
bonus:
	@printf "\n\033[36mCompiling bonus program...\n\033[0m"
	g++ $(CFLAGS) bonus.cpp -o bonus.out 
	@printf "\nRun by typing '\033[1mmake run-bonus\033[0m'\n\n"

run-bonus: 
	./bonus.out	

