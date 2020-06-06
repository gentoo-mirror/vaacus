# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Discord, TUI and SIXEL."
HOMEPAGE="https://github.com/diamondburned/6cord"
SRC_URI="https://github.com/diamondburned/${PN}/archive/stable-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	default
	mv ${PN}-stable-${PV} ${P}
}
