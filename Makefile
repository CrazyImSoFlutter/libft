# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hnoh <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/03 10:36:44 by hnoh              #+#    #+#              #
#    Updated: 2021/01/03 11:06:36 by hnoh             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		=	ft_isalnum.c	\
				ft_isprint.c	\
				ft_isascii.c	\
				ft_isalpha.c	\
				ft_isdigit.c	\
				ft_atoi.c		\
				ft_toupper.c	\
				ft_tolower.c	\
				ft_strlen.c		\



OBJS		=	$(SRCS:.c=.o)

CC			= 	gcc
RM			=	rm -f
AR			=	ar rcs
CFLAGS		=	-Wall -Wextra -Werror -I.

NAME		=	libft.a

all:		$(NAME)
$(NAME):	$(OBJS)
			$(AR) $(NAME) $(OBJS)

clean:		
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean $(NAME)

.PHONY:		all clean fclean re
