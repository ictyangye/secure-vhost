/*
 * (C) Copyright 2016 Rockchip Electronics Co., Ltd
 *
 * SPDX-License-Identifier:	GPL-2.0+
 */

#include <common.h>
#include <asm/arch/clock.h>
#include <dm.h>
#include <syscon.h>

static const struct udevice_id rk3328_syscon_ids[] = {
	{ .compatible = "rockchip,rk3328-grf", .data = ROCKCHIP_SYSCON_GRF },
};

U_BOOT_DRIVER(syscon_rk3328) = {
	.name = "rk3328_syscon",
	.id = UCLASS_SYSCON,
	.of_match = rk3328_syscon_ids,
};
