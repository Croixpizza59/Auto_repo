##
## EPITECH PROJECT, 2020
## makefile
## File description:
## Makefile
##

SRC_DIR	=	./src/
LIB_DIR	=	./lib/

SRC	=	\

SRC_BUILD   =   $(SRC) $(SRC_DIR)main.c \

NAME	=	a.out

CFLAGS	=	-lncurses -Wall -Wextra -Werror -I./include/ -I./lib/

OBJ	=	$(SRC_BUILD:.c=.o)

OBJ_TESTS	=	$(SRC:.c=.o)

all:	$(OBJ)
	make -C $(LIB_DIR)
	gcc -o $(NAME) $(OBJ) $(CFLAGS) -L $(LIB_DIR) -lmy

debug: CFLAGS += -g
debug: re

clean:
	@$(RM) -f $(OBJ)
	@rm -f $(LIB_DIR)*.o
	@rm -f ./lib/libmy.a

fclean: clean
	@$(RM) -f $(NAME)

re: fclean all
