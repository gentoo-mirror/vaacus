# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit flag-o-matic

DESCRIPTION="Discord, TUI and SIXEL."
HOMEPAGE="https://gitlab.com/diamondburned/6cord"
SRC_URI="https://gitlab.com/diamondburned/${PN}/-/archive/stable-${PV}/${PN}-stable-${PV}.tar.gz"

LICENSE="Mozilla-Public-License-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	default
	mv ${PN}-stable-${PV} ${PN}-${PV}
}

src_compile() {
	export -n GOCACHE XDG_CACHE_HOME
	filter-flags -Wl,--as-needed
	default
}

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install
}
