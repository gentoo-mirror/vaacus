# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit go-module desktop

DESCRIPTION="GTK4 Discord client in Go, attempt #4."
HOMEPAGE="https://github.com/diamondburned/gtkcord4"
SRC_URI="https://github.com/diamondburned/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" https://azaleth.xyz/dist/${P}-deps.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	ego build
}

src_install() {
	dobin gtkcord4
	dodoc README.md
	domenu .nix/com.github.diamondburned.gtkcord4.desktop
}
