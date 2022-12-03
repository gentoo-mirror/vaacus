# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Lightweight battery daemon written in C"
HOMEPAGE="https://github.com/electrickite/batsignal"
SRC_URI="https://github.com/electrickite/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

PATCHES=(
	"${FILESDIR}/${P}-make.patch"
)

src_install() {
	default
	doinitd "${FILESDIR}/${PN}"
}
