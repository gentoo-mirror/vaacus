# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="The Zorin OS desktop theme provided in a variety of color combinations."
HOMEPAGE="https://zorin.com/"
SRC_URI="https://github.com/ZorinOS/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	insinto /usr/share/themes/
	doins -r Zorin*
}
