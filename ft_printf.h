#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <stdlib.h>
# include <stdio.h>
# include <unistd.h>

# define HEX_BASE "0123456789abcdef"
# define U_INT unsigned int

int		ft_printf(const char *format, ...);

int		ft_ptf_putchar(char c);
int		ft_ptf_putnbr(int n, int *count);
int		ft_ptf_putstr(char *s);
int		ft_ptf_uiputnbr(unsigned int n, int *count);
int		ft_ptf_puthex(unsigned int nbr, char x, int *count);
int		ft_ptf_pointer(unsigned long int n, int *count);

int		ft_showarg(char c, va_list *list);

#endif