# Copyright (c) 2011 The Chromium OS Authors. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=2

inherit cros-binary

DESCRIPTION="OMAP5 binary OpenGL|ES libraries for panda"
SLOT="0"
KEYWORDS="arm"
IUSE=""

DEPEND=""
RDEPEND="x11-drivers/opengles-headers
	!x11-drivers/opengles"

URI_BASE="file://"

src_prepare() {
	elog "OMAP5 opengles"
}

CROS_BINARY_URI="file://omap5-panda-opengles.tar.gz"
CROS_BINARY_SUM="67d5e7ac1a6f55984643b2a2159e7351cbe8756d"

