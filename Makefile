NAME		=	libftprintf.a

DIR_SRCS	=	srcs
DIR_OBJS	=	objs

SRCS 		= 	$(DIR_SRCS)/ft_printf.c \
$(DIR_SRCS)/ft_printf_utils.c \

OBJS		=	$(subst $(DIR_SRCS), $(DIR_OBJS), $(SRCS:.c=.o))

INCLUDES	=	-I includes

CC			=	gcc
CFLAGS		=	-Wall -Wextra -Werror

$(DIR_OBJS)/%.o :	$(DIR_SRCS)/%.c
			mkdir -p $(DIR_OBJS)
			$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

all:		$(NAME)

$(NAME):	$(OBJS)
			ar -rcs $(NAME) $(OBJS)
			ranlib $(NAME)

clean:
			rm -rf $(OBJS)
			rm -rf $(DIR_OBJS)

fclean:		clean
			rm -rf $(NAME)

re:			fclean all

.PHONY:		all clean fclean re