NAME = libasm.a

SRCS = ft_strlen.s ft_strcmp.s ft_strcpy.s ft_strdup.s ft_read.s ft_write.s 
OBJ = ft_strlen.o ft_strcmp.o ft_strcpy.o ft_strdup.o ft_read.o ft_write.o

all:$(NAME)
$(NAME): $(OBJ)
	ar -rc $(NAME) $(OBJ)
$(OBJ):
	nasm -f macho64 ft_strlen.s
	nasm -f macho64 ft_strcmp.s
	nasm -f macho64 ft_strcpy.s
	nasm -f macho64 ft_strdup.s
	nasm -f macho64 ft_read.s
	nasm -f macho64 ft_write.s
clean:
	rm -rf $(OBJ)
fclean: clean
	rm -rf $(NAME)
re: fclean all