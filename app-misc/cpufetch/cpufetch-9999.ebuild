# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Prints a fancy summary of the CPU."
HOMEPAGE="https://github.com/Dr-Noob/cpufetch"
SRC_URI="https://github.com/Dr-Noob/cpufetch.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	if [[ -n ${A} ]]; then
		git-r3_fetch ${SRC_URI}
		unpack ${A}
	fi
}
