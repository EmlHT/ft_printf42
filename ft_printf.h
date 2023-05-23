/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ehouot <ehouot@student.42nice.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/06 15:20:27 by ehouot            #+#    #+#             */
/*   Updated: 2022/12/09 15:33:32 by ehouot           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <unistd.h>
# include <stdlib.h>
# include <string.h>

int		ft_printf(const char *str, ...);
void	ft_putchar_fd(char c, int fd);
int		ft_putstr_fd(char *s, int fd);
void	ft_putnbr_fd(int n, int fd);
int		ft_printf_c_s(char tag, va_list ptr, int i);
int		ft_printf_d_i(va_list ptr, int i);
int		ft_printf_u(va_list ptr, unsigned int i);
int		ft_printf_percent(int i);
int		ft_printf_hexa(char tag, va_list ptr, int i);
int		ft_printf_p(va_list ptr, unsigned long long i);

#endif
