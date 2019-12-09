#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
extern ssize_t ft_write(int, char *,size_t);
extern ssize_t ft_read(int, void *,size_t);
int main()
{
    char *s = malloc(10);
   // ft_write(1,"otman\n",6);
   ft_read(0,s,6);
   ft_write(1,s,6);
    return 0;
}