# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 desktop

DESCRIPTION="[[Number 1 Rated Salesman1997]]"
HOMEPAGE="https://codeberg.org/thatonecalculator/spamton-linux-shimeji"
EGIT_REPO_URI="https://codeberg.org/thatonecalculator/spamton-linux-shimeji.git"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

PATCHES=( ${FILESDIR}/spamton-bin.patch )

src_install() {
	dobin spamton
	domenu desktop/Spamton.desktop
	doicon -s 128 desktop/spamton.png
	insinto /opt/spamton
	doins Shimeji.jar titles.conf window.conf
	doins -r conf img lib
	dodoc README.md
}
