#include "libasm.h"

int	main()
{
	int fd;
	char *buffer;
	int fd2;

	buffer = (char*)malloc(50);
	fd = open("test.txt", O_CREAT|O_RDONLY|O_WRONLY,0777);
	fd2 = open("test.txt", O_RDONLY);
	ft_write(1, "test\n", 5);
	ft_write(1, "123456789123456789\n", 19);
	ft_write(fd, "test\n", 5);
	ft_write(fd, "123456789123456789\n", 19);
	ft_read(fd2, buffer, 5);
	ft_write(1, buffer, 5);
	ft_write(1, "\n", 1);
	
	return (0);
}

void	test_ft_write()
{
	ft_write(1, "test\n", 5);
	ft_write(1, "123456789123456789\n", 19);
}

void	test_ft_read()
{
	
}

void	test_ft_strlen()
{
	
}

void	test_ft_strcmp()
{
	if (!ft_strcmp("test", "test"))
		ft_write(1, "good\n", 5);
	else
		ft_write(1, "not good\n", 9);
	if (!ft_strcmp("test", "te"))
		ft_write(1, "good\n", 5);
	else
		ft_write(1, "not good\n", 9);
}

void	test_ft_strdup()
{
	
}