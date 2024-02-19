# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module desktop

DESCRIPTION="GTK client for Music Player Daemon (MPD) written in Go"
HOMEPAGE="https://yktoo.com/en/software/ymuse/"
SRC_URI="https://github.com/yktoo/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" https://azaleth.xyz/dist/${P}-deps.tar.xz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	x11-libs/gtk+:3
"
DEPEND="${RDEPEND}"
BDEPEND="
	x11-libs/gdk-pixbuf:2
	dev-libs/glib:2
	sys-devel/gettext
"

src_compile() {
	ego build
}

src_install() {
	default
	insinto /usr/share/
	doins -r resources/{i18n,metainfo,icons}
	domenu resources/com.yktoo.ymuse.desktop
	dobin ymuse
}
