/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: joao-rib <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/07/19 19:30:33 by joao-rib          #+#    #+#             */
/*   Updated: 2023/10/08 16:43:03 by joao-rib         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdarg.h>
# include <stdlib.h>
# include <unistd.h>

# define CONVERSION "cspdiuxX%"
# define FLAGS "-0# +"
# define DECIMAL "0123456789"
# define HEXA_LOW "0123456789abcdef"
# define HEXA_UPP "0123456789ABCDEF"

size_t	ft_strlen(const char *str);
char	*ft_strchr(const char *str, int c);
int		ft_putchar_fd(char c, int fd);
int		ft_putnbr_fd(long n, int fd);
int		ft_putstr_fd(char *str, int fd);

#endif
