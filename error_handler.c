#include "./fdf.h"

/// THIS WON"T WORK
/// CAUSE ITS MLX LIBRARY, NOT BUILT IN

void	error_handler(void)
{
	ft_putstr_fd("FDF: ", 2);
	ft_putstr_fd(strerror(errno), 2);
	exit(EXIT_FAILURE);
}