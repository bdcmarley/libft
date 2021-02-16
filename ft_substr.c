/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putchar.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cmarley <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/04/29 11:46:16 by cmarley           #+#    #+#             */
/*   Updated: 2020/04/29 11:46:16 by cmarley          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	int		i;
	char	*pt;

	if (!s)
		return (0);
	i = 0;
	while (s[i])
		i++;
	if (i < (int)start)
	{
		if (!(pt = malloc(sizeof(char))))
			return (0);
		pt[0] = '\0';
		return (pt);
	}
	if (!(pt = malloc((len + 1) * sizeof(char))))
		return (0);
	i = 0;
	while (i < (int)len && s[start + i])
	{
		pt[i] = s[start + i];
		i++;
	}
	pt[i] = '\0';
	return (pt);
}
