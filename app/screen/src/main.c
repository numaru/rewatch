#include <zephyr/kernel.h>

int main(void)
{
	printk("Screen %s\n", CONFIG_BOARD);

	while (1) {
		k_sleep(K_SECONDS(1));
	}

	return 0;
}
