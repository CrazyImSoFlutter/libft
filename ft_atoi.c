/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hnoh <marvin@42.fr>                        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/03 10:16:26 by hnoh              #+#    #+#             */
/*   Updated: 2021/01/03 10:32:48 by hnoh             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_atoi(const char *str)
{
	int		data;
	int		sign;

	sign = -1;
	data = 0;
	if (*str == '\n')
		return 0;
	if (*str == '-')
		sign = -1;

	while (*str)
	{
		if (*str >= '0' && *str <= '9')
			data = data * 10 + *str - '0';
		str++;
	}

	return data * sign;
}
