# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cmarley <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/20 06:03:33 by cmarley           #+#    #+#              #
#    Updated: 2020/02/20 06:03:34 by cmarley          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
PATH_SRC = ./
HEADER_PATH = ./
FLAG = -Wall -Wextra -Werror
SRC =	$(PATH_SRC)ft_atoi.c \
		$(PATH_SRC)ft_bzero.c \
		$(PATH_SRC)ft_calloc.c \
		$(PATH_SRC)ft_isalnum.c \
		$(PATH_SRC)ft_isalpha.c \
		$(PATH_SRC)ft_isascii.c \
		$(PATH_SRC)ft_isdigit.c \
		$(PATH_SRC)ft_isprint.c \
		$(PATH_SRC)ft_itoa.c \
		$(PATH_SRC)ft_memccpy.c \
		$(PATH_SRC)ft_memcpy.c \
		$(PATH_SRC)ft_memchr.c \
		$(PATH_SRC)ft_memcmp.c \
		$(PATH_SRC)ft_memmove.c \
		$(PATH_SRC)ft_memset.c \
		$(PATH_SRC)ft_putchar_fd.c \
		$(PATH_SRC)ft_putendl_fd.c \
		$(PATH_SRC)ft_putnbr_fd.c \
		$(PATH_SRC)ft_putstr_fd.c \
		$(PATH_SRC)ft_split.c \
		$(PATH_SRC)ft_strchr.c \
		$(PATH_SRC)ft_strdup.c \
		$(PATH_SRC)ft_strjoin.c \
		$(PATH_SRC)ft_strlcat.c \
		$(PATH_SRC)ft_strlcpy.c \
		$(PATH_SRC)ft_strlen.c \
		$(PATH_SRC)ft_strmapi.c \
		$(PATH_SRC)ft_strncmp.c \
		$(PATH_SRC)ft_strnstr.c \
		$(PATH_SRC)ft_strrchr.c \
		$(PATH_SRC)ft_strtrim.c \
		$(PATH_SRC)ft_substr.c \
		$(PATH_SRC)ft_tolower.c \
		$(PATH_SRC)ft_toupper.c \

BONUS = $(PATH_SRC)ft_lstadd_back.c \
		$(PATH_SRC)ft_lstadd_front.c \
		$(PATH_SRC)ft_lstclear.c \
		$(PATH_SRC)ft_lstdelone.c \
		$(PATH_SRC)ft_lstiter.c \
		$(PATH_SRC)ft_lstlast.c \
		$(PATH_SRC)ft_lstmap.c \
		$(PATH_SRC)ft_lstnew.c \
		$(PATH_SRC)ft_lstsize.c \

OBJ = $(SRC:%.c=%.o)

OBJSBONUS = ${BONUS:.c=.o}

all: $(NAME)

$(NAME): $(OBJ)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)

$(PATH_SRC)%.o: $(PATH_SRC)%.c
	gcc $(FLAG) -c $< -o $@ -I $(HEADER_PATH)

clean:
		/bin/rm -f $(OBJ) $(OBJSBONUS)

fclean: clean
		/bin/rm -f $(NAME)

bonus:	${OBJS} ${OBJSBONUS}
		ar rcs ${NAME} ${OBJS} ${OBJSBONUS}

re: fclean all
