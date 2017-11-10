/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftasm.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jle-quer <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/09 11:07:49 by jle-quer          #+#    #+#             */
/*   Updated: 2017/11/10 17:51:30 by jle-quer         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTASM_H
# define LIBFTASM_H

void		ft_bzero(void *s, size_t n);
int			ft_isalpha(int c);
int			ft_islower(int c);
int			ft_isupper(int c);
int			ft_isdigit(int c);
int			ft_isalnum(int c);
int			ft_isascii(int c);
int			ft_isprint(int c);
int			ft_toupper(int c);
int			ft_tolower(int c);
int	    	ft_puts(char *s);
char		*ft_strcat(char *s1, const char *s2);
size_t		ft_strlen(const char *s);
void		*ft_memset(void *b, int c, size_t len);
void		*ft_memcpy(void *restrict dst, const void *restrict src, size_t n);
char		*ft_strdup(const char *s1);

#endif
