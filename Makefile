# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: andrefil <andrefil@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/10 11:57:28 by andrefil          #+#    #+#              #
#    Updated: 2024/06/28 05:03:18 by andrefil         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#------------------ NAME ---------------------#
NAME_MAND				:= get_next_line.a
NAME_BONUS			:= get_next_line_bonus.a

#------------------ INCLUDES -----------------#
INCLUDES_MAND		:= $(addprefix -I, includes/mandatory/)
INCLUDES_BONUS	:= $(addprefix -I, includes/bonus/)

#------------------ COMPILER -----------------#
CC							:= cc

#------------------ FLAGS --------------------#
C_FLAGS					:= -Wall -Wextra -Werror -O3

#------------------ FILES --------------------#
SRC_MAND_FILES	+=	$(addprefix srcs/mandatory/, \
										get_next_line.c \
										get_next_line_utils.c)

SRC_MAND_FILES	+=	$(addprefix srcs/bonus/, \
										get_next_line_bonus.c \
										get_next_line_utils_bonus.c)

#------------------ OBJ ----------------------#
OBJS_MAND_DIR		:=	src/mandatory/objs/
OBJS_BONUS_DIR	:=	src/bonus/objs/
OBJS_MAND				:=	$(SRC_MAND_FILES:%.c=$(OBJS_MAND_DIR)%.o)
OBJS_BONUS			:=	$(SRC_BONUS_FILES:%.c=$(OBJS_BONUS_DIR)%.o)


all: $(NAME_MAND)

$(OBJS_MAND_DIR)%.o:%.c
	mkdir -p $(dir $@)
	$(CC) $(C_FLAGS) $(INCLUDES_MAND) -c $< -o $(OBJS_MAND_DIR)
	ar rcs $(NAME_MAND) $(OBJS_MAND)

$(NAME_MAND): $(OBJS_MAND)

$(OBJS_BONUS_DIR)%.o:%.c
	mkdir -p $(dir $@)
	$(CC) $(C_FLAGS) $(INCLUDES_BONUS) -c $< -o $(OBJS_BONUS_DIR)
	ar rcs $(NAME_BONUS) $(OBJS_BONUS)

bonus: $(OBJS_BONUS)

clean:
	rm -rf $(OBJS_MAND_DIR) $(OBJS_BONUS_DIR)

fclean: clean
	rm -rf $(NAME_MAND) $(NAME_BONUS)

re: fclean all bonus

.PHONY : all clean fclean re
