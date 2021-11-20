# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A meme system info tool for Linux, based on nyan/uwu trend on r/linuxmasterrace."
HOMEPAGE="https://github.com/TheDarkBug/uwufetch"
SRC_URI="https://github.com/TheDarkBug/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="viu gpu"

DEPEND="
	viu? ( media-gfx/viu )
	gpu? ( sys-apps/lshw )
	app-text/pandoc
"

RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	default
	emake PREFIX="${D}" man
}

src_install() {
	dodir /usr/bin
	dodir /usr/lib/${PN}
	dodir /usr/share/man/man1
	default
}
