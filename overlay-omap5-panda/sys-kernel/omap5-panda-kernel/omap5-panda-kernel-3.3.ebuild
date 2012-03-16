# Copyright (c) 2012 The Chromium OS Authors. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI=4

# This must be inherited *after* EGIT/CROS_WORKON variables definedPI=4
EGIT_PROJECT="landing-teams/working/ti/kernel"
EGIT_REPO_URI="git://git.linaro.org/${EGIT_PROJECT}.git"
EGIT_BRANCH="tilt-tracking"

# To move up to a new commit, you should update this and then bump the
# symlink to a new revision
EGIT_COMMIT="84cdb7ca5b79e895adb45bba47fb2ade6ed07d84"

inherit git cros-kernel2

DESCRIPTION="Chrome OS Kernel-waluigi"
KEYWORDS="amd64 arm x86"

DEPEND="!sys-kernel/chromeos-kernel-next
	!sys-kernel/chromeos-kernel
	"
RDEPEND="${DEPEND}"


src_prepare() {
	elog "Patching kernel"

	git am ${FILESDIR}/*.patch || die "Unable to apply kernel patches"
}

