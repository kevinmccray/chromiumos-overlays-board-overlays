# Copyright (c) 2012 The Chromium OS Authors. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=2

inherit toolchain-funcs

DESCRIPTION="Daisy public bsp (meta package to pull in driver/tool dependencies)"

LICENSE="BSD"
SLOT="0"
KEYWORDS="arm"
IUSE=""
PROVIDE="virtual/chromeos-bsp"

DEPEND=""
RDEPEND="
	chromeos-base/serial-tty
	media-libs/mfc-fw
	sys-boot/exynos-pre-boot
"
