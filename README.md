# ft_printf
My version of the printf function

## General notes

### Functions from <stdarg.h>

Function | Format | Description
--- | --- | ---
va_start | `void	va_start(va_list ap, param)` | Starts argument list ap, applied to param
va_arg | `type	va_arg(va_list ap, type)` | Defines type for an argument, saves in respective variable
va_end | `void	va_end(va_list ap)` | Ends argument list ap
va_copy | `void	va_copy(va_list dest, va_list src)` | Copies list from src to dest (both must then be ended)

### Conversion and Flags

Conversion | Description
--- | ---
%c | Single character
%s | String
%p | Pointer (hexadecimal format)
%d | Integer (decimal)
%i | Integer (base 10)
%u | Unsigned decimal number
%x | Integer (base 16, lower case)
%X | Integer (base 16, upper case)
%% | Just the percent sign

Flag | (WIP) Compatible with | Description
--- | --- | ---
%[number] | all | Print result [number] spaces to the right
%-[number] | all | Print result formatted to the left. Returns same result as without the '-'
%0[number] | %d, %i, %u, %x, %X | Print result after [number] zeros
%.[number] | %d, %i, %u, %x, %X | Print result ensuring that [number] characters were printed. Fill the rest with zeros, if needed
%# | %x, %X | Prints result prefixed by 0x or 0X
%+ | %d, %i, %u, %x, %X | Prints positive numbers prefixed by '+', or negative numbers prefixed by '-'
%[space] | %d, %i, %u, %x, %X | Prints positive numbers prefixed by ' ', or negative numbers prefixed by '-'

## Main Functions

### Libft functions

Function | Format | Modified?
--- | --- | ---
ft_putchar_fd | `int	ft_putchar_fd(char c, int fd);` | Function now returns int with value 1
ft_putstr_fd | `int	ft_putstr_fd(char *str, int fd);` | Function now returns printed length. If str is NULL, function prints (null)
ft_putnbr_fd | `int	ft_putnbr_fd(long n, int fd);` | Function now accepts numbers in "long" format, and returns printed length
ft_strlen | `size_t	ft_strlen(const char *str)` | Same as libft
ft_strchr | `char	*ft_strchr(const char *str, int c)` | Same as libft

### New functions

Function | Format | Description | Return
--- | --- | --- | ---
ft_putnbr_ubase_fd | `int	ft_putnbr_ubase_fd(unsigned int nbr, char *base, int fd)` | Prints nbr to the file descriptor fd, in numerical "base" | Printed length
ft_putnbr_lbase_fd | `int	ft_putnbr_lbase_fd(unsigned long nbr, char *base, int fd)` | Prints nbr to the file descriptor fd, in numerical "base" | Printed length

## (WIP) Bonus Functions

### Libft functions

Function | Format | Modified?
--- | --- | ---
ft_isdigit | `int	ft_isdigit(int c)` | Same as libft
ft_memset | `void	*ft_memset(void *s, int c, size_t n)` | Same as libft
ft_memchr | `void	*ft_memchr(const void *str, int c, size_t n)` | Same as libft
ft_atoi | `int	ft_atoi(const char *str)` | Same as libft
ft_calloc | `void	*ft_calloc(size_t nmemb, size_t size)` | Same as libft
ft_substr | `char	*ft_substr(const char *str, unsigned int start, size_t len)` | Same as libft

### New functions

Function | Format | Description | Return
--- | --- | --- | ---
ft_buildkey | `size_t	ft_buildkey(const char *str, char *k)` | Reads and builds the "key" k, that is, the string that is made up of flags, and ends at the conversor. Variable str start at the character after '%'
