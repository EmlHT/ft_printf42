# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ehouot <ehouot@student.42nice.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/06 16:26:55 by ehouot            #+#    #+#              #
#    Updated: 2022/12/07 08:01:23 by ehouot           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC 		= ft_printf.c \
				ft_printf_c_s.c \
				ft_putchar_fd.c \
				ft_putstr_fd.c \
				ft_putnbr_fd.c \
				ft_printf_d_i.c \
				ft_printf_u.c \
				ft_printf_percent.c \
				ft_printf_hexa.c \
				ft_printf_p.c

OBJ 		= $(SRC:.c=.o)

CC 			= clang

RM 			= rm -f

CFLAGS 		= -Wall -Werror -Wextra

NAME 		= libftprintf.a

all:		$(NAME)

.c.o:
			$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

$(NAME):	$(OBJ)
			ar rcs $(NAME) $(OBJ)

clean:
			$(RM) $(OBJ)

fclean: 	clean
			$(RM) $(NAME)

re:			fclean $(NAME)

.PHONY: 	all clean fclean re