#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

extern int ft_strlen(char *);
int str(char *s)
{
    int i;

    i = 0;
    while (s[i] != '\0')
        i++;
    return i;    
}
int main()
{

    //printf("%d\n",ft_strlen(s));
    printf("%d\n",str(s));
    return 0;
}