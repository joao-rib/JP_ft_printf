NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
SRC = $(filter-out $(wildcard *_bonus.c), $(wildcard ft*.c))
OBJ = $(SRC:.c=.o)

all: $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $(SRC)

$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ)

clean:
	rm -fr $(OBJ)

fclean:
	rm -fr $(OBJ) $(NAME)

re: fclean all
