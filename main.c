/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oel-bour <oel-bour@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/05 12:44:49 by oel-bour          #+#    #+#             */
/*   Updated: 2020/02/05 12:44:49 by oel-bour         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

void	test_ft_write()
{
	ft_write(1, "test\n", 5);
	ft_write(1, "123456789123456789\n", 19);
}

void	test_ft_strlen()
{
	int l;
	char *s;

	s = "0123456789";
	l = ft_strlen(s);
	if (l == 10)
		ft_write(1, "strlen good\n",ft_strlen("strlen good\n"));
	else 
		ft_write(1, "strlen not good\n",ft_strlen("strlen not good\n"));
}

void	test_ft_strcmp()
{
	if (!ft_strcmp("test", "test"))
		ft_write(1, "good\n", 5);
	else
		ft_write(1, "not good\n", 9);
	if (ft_strcmp("test", "te"))
		ft_write(1, "good\n", 5);
	else
		ft_write(1, "not good\n", 9);
}

void	test_ft_strdup()
{
	char *s;
	char *h;

	s = "123456789";
	h = ft_strdup(s);
	ft_write(1, h, ft_strlen(h));
}

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
	test_ft_strlen();
	test_ft_strcmp();
	test_ft_strdup();
	return (0);
}