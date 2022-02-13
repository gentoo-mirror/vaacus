# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PATCHES=( "${FILESDIR}/${P}-func.patch" )

PYTHON_COMPAT=( python3_{8..10} )
inherit git-r3 distutils-r1
DESCRIPTION="Watch classic spongebob from the terminal!"
HOMEPAGE="https://github.com/trakBan/spongebob-cli"
EGIT_REPO_URI="https://github.com/trakBan/${PN}.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-python/termcolor
	dev-python/beautifulsoup4
	dev-python/prettytable
	dev-python/halo
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	default
	dobin spongebob-cli
}
