# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Prints a fancy summary of the CPU."
HOMEPAGE="https://github.com/Dr-Noob/cpufetch"
EGIT_REPO_URI="https://github.com/Dr-Noob/cpufetch.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin cpufetch || die "Install failed!"
	doman cpufetch.8 || die "Install failed!"
}
