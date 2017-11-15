#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <assert.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include "./include/libftasm.h"

int     main(int ac, const char **av)
{
    ft_cat(0);
    ft_cat(open(__FILE__, O_RDONLY));
    ft_cat(-42);
    (void)ac;
    return (0);
}
