# Copyright (c) 2010 The Chromium OS Authors. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=2

inherit cros-binary

DESCRIPTION="NVIDIA binary OpenGL|ES libraries for Tegra2"
SLOT="0"
KEYWORDS="arm"
LICENSE="NVIDIA"

DEPEND=""
RDEPEND="sys-apps/nvrm
	x11-drivers/opengles-headers
	!x11-drivers/opengles"

CROS_BINARY_URI="http://developer.download.nvidia.com/assets/tools/files/l4t/r15_beta/cardhu_Tegra-Linux-R15.beta.1.0_armel.tbz2"
CROS_BINARY_SUM="bf5f5fab362ee5fdf89f11b11a8883cdb0b6ccd8"

src_install() {
	local target="${CROS_BINARY_STORE_DIR}/${CROS_BINARY_URI##*/}"
	tar xpjf "${target}" -C "${T}" || die "Failed to unpack ${target}"
	tar xpzf "${T}/Linux_for_Tegra/nv_tegra/base.tgz" -C "${T}" || die "Failed to unpack base"

	insinto /usr/lib
	newins ${T}/usr/lib/libEGL.so libEGL.so.1	  	|| die
	fperms 0755 /usr/lib/libEGL.so.1			|| die
	dosym libEGL.so.1 /usr/lib/libEGL.so			|| die

	newins ${T}/usr/lib/libGLESv2.so libGLESv2.so.2	  	|| die
	fperms 0755 /usr/lib/libGLESv2.so.2			|| die
	dosym libGLESv2.so.2 /usr/lib/libGLESv2.so		|| die
}
