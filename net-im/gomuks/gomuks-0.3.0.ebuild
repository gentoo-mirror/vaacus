# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit go-module

DESCRIPTION="A terminal based Matrix client written in Go."
HOMEPAGE="https://maunium.net/go/gomuks/"
SRC_URI="https://github.com/tulir/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" https://azaleth.xyz/dist/${P}-deps.tar.xz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	ego build -ldflags "-X main.Tag=v${PV}"
}

src_install() {
	dobin gomuks
	dodoc README.md
	dodoc CHANGELOG.md
}
