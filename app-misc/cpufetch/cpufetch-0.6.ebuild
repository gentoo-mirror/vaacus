# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Prints a fancy summary of the CPU."
HOMEPAGE="https://github.com/Dr-Noob/cpufetch"
SRC_URI="https://codeload.github.com/Dr-Noob/${PN}/tar.gz/v${PV} -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
		dobin cpufetch || die "Install failed!"
		doman cpufetch.8 || die "Install failed!"
}

