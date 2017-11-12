# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jle-quer <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/09 11:16:08 by jle-quer          #+#    #+#              #
#    Updated: 2017/11/10 17:51:03 by jle-quer         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
PATH_SRC = ./src/

SRC =	ft_bzero.s \
		ft_isalpha.s \
		ft_islower.s \
		ft_isupper.s \
		ft_isdigit.s \
		ft_isalnum.s \
		ft_isascii.s \
		ft_isprint.s \
		ft_toupper.s \
		ft_tolower.s \
		ft_puts.s \
		ft_fdputs.s \
		ft_strcat.s \
		ft_strlen.s \
		ft_memset.s \
		ft_memcpy.s \
		ft_strdup.s \
		ft_cat.s

OBJ = $(addprefix $(PATH_SRC), $(SRC:%.s=%.o))

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s ./include/libftasm.h
	nasm -f macho64 $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re test clean_test
