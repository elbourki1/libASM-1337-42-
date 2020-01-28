#ifndef LIBASM_H
#define LIBASM_H

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>

extern ssize_t	ft_write(int, char *,size_t);
extern ssize_t	ft_read(int, void *,size_t);
extern size_t	ft_strlen(char*);
extern char		*ft_strcpy(char*, char*);
extern char		*ft_strdup(char*);
extern int		ft_strcmp(char*, char*);
#endif