#include <ctype.h>
#include "./include/libftasm.h"
#include <stdio.h>
#include <string.h>
#include <fcntl.h>

char *ft_display_bzero(int i)
{
	char s[101] = "salut toi !";
	char *s2;

	ft_bzero(s, i);
	s2 = strdup(s);
	return (s2);
}

int            main(void)
{
	printf("\n---------------------\n");
	printf("ft_isalpha:\n");
	printf("'\\n' => %d\n", ft_isalpha(10));
	printf("'@' => %d\n", ft_isalpha(64));
	printf("'A' => %d\n", ft_isalpha(65));
	printf("']' => %d\n", ft_isalpha(93));
	printf("'s' => %d\n", ft_isalpha(115));
	printf("'130' => %d\n", ft_isalpha(130));

	printf("\n---------------------\n");
	printf("ft_isdigit:\n");
	printf("'\\n' => %d\n", ft_isdigit(10));
	printf("'/' => %d\n", ft_isdigit(47));
	printf("'0' => %d\n", ft_isdigit(48));
	printf("'5' => %d\n", ft_isdigit('5'));
	printf("'9' => %d\n", ft_isdigit(57));
	printf("':' => %d\n", ft_isdigit(58));
	printf("'A' => %d\n", ft_isdigit('A'));

	printf("\n---------------------\n");
	printf("ft_isalnum:\n");
	printf("'1' => %d\n", ft_isalnum(49));
	printf("'@' => %d\n", ft_isalnum(64));
	printf("'A' => %d\n", ft_isalnum(65));
	printf("']' => %d\n", ft_isalnum(93));
	printf("'s' => %d\n", ft_isalnum(115));
	printf("1300 => %d\n", ft_isalnum(1300));

	printf("\n---------------------\n");
	printf("ft_isascii:\n");
	printf("'1' => %d\n", ft_isascii(49));
	printf("'@' => %d\n", ft_isascii(64));
	printf("'A' => %d\n", ft_isascii(65));
	printf("']' => %d\n", ft_isascii(93));
	printf("'s' => %d\n", ft_isascii(115));
	printf("1300 => %d\n", ft_isascii(1300));

	printf("\n---------------------\n");
	printf("ft_isprint:\n");
	printf("1 => %d\n", ft_isprint(1));
	printf("'@' => %d\n", ft_isprint(64));
	printf("'A' => %d\n", ft_isprint(65));
	printf("']' => %d\n", ft_isprint(93));
	printf("127 => %d\n", ft_isprint(127));
	printf("1300 => %d\n", ft_isprint(1300));

	printf("\n---------------------\n");
	printf("ft_tolower:\n");
	printf("'a' => %c\n", ft_tolower('a'));
	printf("'A' => %c\n", ft_tolower('A'));
	printf("'Z' => %c\n", ft_tolower('Z'));
	printf("'z' => %c\n", ft_tolower('z'));
	printf("'1' => %c\n", ft_tolower('1'));
	printf("'$' => %c\n", ft_tolower('$'));

	printf("\n---------------------\n");
	printf("ft_toupper:\n");
	printf("'a' => %c\n", ft_toupper('a'));
	printf("'A' => %c\n", ft_toupper('A'));
	printf("'Z' => %c\n", ft_toupper('Z'));
	printf("'z' => %c\n", ft_toupper('z'));
	printf("'1' => %c\n", ft_toupper('1'));
	printf("'$' => %c\n", ft_toupper('$'));

	printf("\n---------------------\n");
	printf("ft_bzero:\n");
	printf("'2' => %s\n", ft_display_bzero(2));
	printf("'100' => %s\n", ft_display_bzero(100));
	printf("'11' => %s\n", ft_display_bzero(11));
	printf("'12' => %s\n", ft_display_bzero(12));
	printf("'10' => %s\n", ft_display_bzero(10));

	char str[50];
	str[0] = '\0';
	printf("\n---------------------\n");
	printf("ft_strcat:\n");
	printf("%s\n", ft_strcat(str, "Ca"));
	printf("%s\n", ft_strcat(str, " s'en"));
	printf("%s\n", ft_strcat(str, " va"));
	printf("%s\n", ft_strcat(str, " et"));
	printf("%s\n", ft_strcat(str, " ca"));
	printf("%s\n", ft_strcat(str, " ..."));

	printf("\n---------------------\n");
	printf("ft_puts:\n");
	printf("%d = %d\n", puts(""), ft_puts(""));
	printf("%d = %d\n", puts(NULL), ft_puts(NULL));
	printf("%d = %d\n", puts("word"), ft_puts("word"));
	printf("%d = %d\n", puts("a string"), ft_puts("a string"));
	printf("%d = %d\n", puts("a loooooooooooooooooooooooooooooooooooooooooooong string"), ft_puts("a loooooooooooooooooooooooooooooooooooooooooooong string"));

	printf("\n---------------------\n");
	printf("ft_fdputs:\n");
	int fd = open("fd.txt", O_RDWR | O_APPEND | O_CREAT, 0777);
	if (fd < 0)
	{
		printf("Fail when open O_RDWR fd.txt\n");
		return (-1);
	}
	ft_fdputs("Add this line to STDOUT", 1);
	ft_fdputs("Add this line to fd.txt", fd);
	ft_fdputs("A line has added to fd.txt", 1);

	printf("\n---------------------\n");
	printf("ft_strlen:\n");
	printf("%zu = %zu\n", strlen("Test 1"), ft_strlen("Test 1"));
	printf("%zu = %zu\n", strlen("a"), ft_strlen("a"));
	printf("%zu = %zu\n", strlen(""), ft_strlen(""));
	printf("%zu = %zu\n", strlen("Test 123456789"), ft_strlen("Test 123456789"));
	printf("%zu = %zu\n", strlen("\0Test 123456"), ft_strlen("\0Test 123456"));
	printf("%zu = %zu\n", strlen("Test 123456\0789"), ft_strlen("Test 123456\0789"));

	printf("\n---------------------\n");
	printf("ft_memset:\n");
	char tab[3][3];
	tab[0][0] = 15;
	printf("%c\n\n", tab[0][0]);
	ft_memset(tab[0], 48, 3);
	ft_memset(tab[1], 72, 3);
	ft_memset(tab[2], 90, 3);
	printf("%c = %c\n", tab[0][0], tab[0][2]);
	printf("%c = %c\n", tab[1][0], tab[1][2]);
	printf("%c = %c\n", tab[2][0], tab[2][2]);

	// printf("\n---------------------\n");
	// printf("ft_memcpy:\n");
	// const char src[10] = "Je test";
	// tab[0][0] = 15;
	// printf("%c\n\n", tab[0][0]);
	// ft_memset(tab[0], 48, 3);
	// ft_memset(tab[1], 72, 3);
	// ft_memset(tab[2], 90, 3);
	// printf("%c = %c\n", tab[0][0], tab[0][2]);
	// printf("%c = %c\n", tab[1][0], tab[1][2]);
	// printf("%c = %c\n", tab[2][0], tab[2][2]);

	printf("\n---------------------\n");
	printf("ft_strdup:\n");
	printf("%s\n", ft_strdup("Yo"));

	printf("\n---------------------\n");
	printf("ft_strchr:\n");
	printf("[%s] = [%s]\n", strchr("ABCDEF", 0), ft_strchr("ABCDEF", 0));
	printf("[%s] = [%s]\n", strchr("ABCDEF", 'D'), ft_strchr("ABCDEF", 'D'));
	printf("[%s] = [%s]\n", strchr("ABCDEF", -1), ft_strchr("ABCDEF", -1));

	printf("\n---------------------\n");
	printf("ft_abs:\n");
	printf("%d -> %d\n", -123, ft_abs(-123));
	printf("%d -> %d\n", 123, ft_abs(123));
	printf("%d -> %d\n", 0, ft_abs(0));
	return (0);
}
