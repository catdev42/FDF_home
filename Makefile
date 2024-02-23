# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: myakoven <myakoven@student.42berlin.de>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/17 15:27:14 by myakoven          #+#    #+#              #
#    Updated: 2024/02/23 12:57:11 by myakoven         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	:= FDF

LIBNAME = libft.a
LIBDIR = ./libft
LIBFT = ./libft/libft.a

MLX42A = ./MLX42/build/libmlx42.a
MLX42 = ./MLX42/build/libmlx42.a -ldl -lglfw -pthread -lm
MLXDIR = ./MLX42

#------------------------------------------------#
#   INGREDIENTS                                  #
#------------------------------------------------#

HEADERS 	:= -I . -I $(LIBDIR)/include
SRC     	:= main.c
OBJS     	= $(SRC:.c=.o)

CC      	:= cc
CFLAGS  	:= -Wextra -Wall -Werror -Wunreachable-code -Ofast -g

#------------------------------------------------#
#   RECIPES                                      #
#------------------------------------------------#

all: $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

libft:
	make -C $(LIBDIR)

libmlx: | $(MLX_DIR)
	@cmake $(MLXDIR) -B $(MLXDIR)/build && make -C $(MLXDIR)/build -j4
	
$(MLX_DIR):
	git clone https://github.com/codam-coding-college/MLX42.git;


$(NAME): libft libMLX $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) $(LIBFT) $(MLX42) $(HEADERS) -o $(NAME)

cleanmlx:
	rm -f $(MLX42A)	

clean:
	rm -f $(OBJS)
	cd $(LIBDIR) && make clean
	rm -f $(OBJSBONUS)

fclean: clean
	rm -f $(NAME)
	rm -f $(NAME_BONUS)
	cd $(LIBDIR) && make fclean

re: fclean all

#------------------------------------------------#
#   NOTES                                        #
#------------------------------------------------#
