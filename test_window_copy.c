#include "./fdf.h"

static void	ft_error(void)
{
	ft_putstr_fd(mlx_strerror(mlx_errno), 2);
    exit(EXIT_FAILURE);
}

// Main MLX handle, carries important data in regards to the program.

// Parameters:
// window – The window itself.
// context – Abstracted opengl data.
// width – The width of the window.
// height – The height of the window.
// delta_time – The time difference between the previous frame and the current frame.

static void ft_hook(void *param)
{
    mlx_set_setting(MLX_MAXIMIZED, true);
    // (you say which setting you want to adjust and the value you wonna adjust it to...)

    const 
}