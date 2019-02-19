#  Makefile for using flex with bison 
#  
#  The executable receives the name of the current folder
#      Do not use spaces in the name of the folder 
#  
#  The .lex and .y files used are the first ones found by ls 
#   
#  If there is a .txt file, it will be used as the input of the executable 
#  
#  This Makefile works on Linux and on OSX          

space := $(subst ,, )
NAME=$(notdir $(patsubst %/,%,$(subst $(space),_,$(CURDIR))))


BISON_FILENAME=$(firstword $(wildcard *.y))

BISON_C_FILENAME=$(basename $(BISON_FILENAME)).tab.c 

BISON_H_FILENAME=$(basename $(BISON_FILENAME)).tab.h 

REPORT_FILENAME=$(basename $(BISON_FILENAME)).lst 

GRAPH_FILENAME=$(basename $(BISON_FILENAME)).gv 

FLEX_FILENAME=$(firstword $(wildcard *.lex))

TEXT_FILENAME=$(firstword $(wildcard *.txt))


ifeq ($(strip $(TEXT_FILENAME)),) 
RUN_OPTS=
else 
RUN_OPTS=<$(TEXT_FILENAME)
endif 



ifeq ($(shell uname),Darwin)
	    LINK_FLAGS=-ll
    else
	    LINK_FLAGS=-lfl
endif 


$(NAME):  $(BISON_C_FILENAME)  lex.yy.c $(BISON_H_FILENAME)   
	gcc -Wall $(BISON_C_FILENAME)  lex.yy.c   $(LINK_FLAGS) -o $(NAME)


$(BISON_C_FILENAME) $(BISON_H_FILENAME):  $(BISON_FILENAME)
	bison -d $(BISON_FILENAME)

lex.yy.c: $(FLEX_FILENAME) $(BISON_H_FILENAME)
	flex -t $(FLEX_FILENAME) > lex.yy.c



run: $(NAME) 
	./$(NAME)   $(RUN_OPTS)

#       Make a detailed bison report: .lst  
report:  $(BISON_FILENAME)
	 bison -d $(BISON_FILENAME) --report=all --report-file=$(REPORT_FILENAME)


#       Make a detailed bison graph 
graph:  $(BISON_FILENAME)
	bison -d $(BISON_FILENAME) --graph=$(GRAPH_FILENAME) 

clean:  
	rm -f $(BISON_C_FILENAME)  lex.yy.c $(BISON_H_FILENAME) lex.yy.h $(NAME) 


