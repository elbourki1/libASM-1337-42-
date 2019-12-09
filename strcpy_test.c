#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#pragma src
extern ssize_t ft_write(int, char *,size_t);
extern ssize_t ft_read(int, void *,size_t);
extern size_t ft_strlen(char*);
extern char* ft_strcpy(char*, char*);
extern char* ft_strdup(char*);
extern int ft_strcmp(char*, char*);
extern void * ft_malloc(size_t size);
int main()
{
    char *s = malloc(10);
    char *o = "otman";
  char *x = ft_strcpy(s,o);
  ft_write(1,s,5);
  ft_write(1,x,5);
  printf("%zu\n",ft_strlen("ft_strcmp(s,x)"));
  //ft_strdup("ok");
  //char *f = ft_strdup("ok");
  //ft_write(1,f,2);
  //ft_strcmp(s,x);
  printf("me>%d\n",ft_strcmp(s,x));
    printf("org%d\n",strcmp(s,x));
    printf("me>%d\n",ft_strcmp("otamn9","otamn2"));
    printf("org%d\n",strcmp("otamn9","otamn2"));
    return 0;
}