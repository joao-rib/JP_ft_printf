NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
SRC = $(filter-out $(wildcard *_bonus.c), $(wildcard ft*.c))
OBJ = $(SRC:.c=.o)
BONUS_SRC = $(wildcard ft*_bonus.c)
BONUS_OBJ = $(BONUS_SRC:.c=.o)

all: $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $(SRC)

%bonus.o: %bonus.c
	$(CC) $(CFLAGS) -c $(BONUS_SRC)

$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ)

clean:
	rm -fr $(OBJ) $(BONUS_OBJ)

fclean:
	rm -fr $(OBJ) $(BONUS_OBJ) $(NAME)

re: fclean all

bonus: $(OBJ) $(BONUS_OBJ)
	ar -rcs $(NAME) $(OBJ) $(BONUS_OBJ)
