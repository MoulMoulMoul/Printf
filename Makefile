NAME = libftprintf.a

SRCS = ft_printf.c ft_printf_utils.c

OBJS = ${SRCS:.c=.o}

CC = gcc
RM = rm -f
ARCHIVE = ar rcs
CFLAGS = -Wall -Werror -Wextra

all: ${NAME}

.c.o:
	${CC} ${CFLAGS} -g -c $< -o ${<:.c=.o}

${NAME}: ${OBJS}
	${ARCHIVE} ${NAME} ${OBJS}

clean: 
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all 