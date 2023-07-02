# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit unpacker desktop xdg

DESCRIPTION="Yet another matrix client for desktop"
HOMEPAGE="https://cinny.in/"
SRC_URI="https://github.com/cinnyapp/cinny-desktop/releases/download/v${PV}/Cinny_desktop-x86_64.deb -> ${P}.deb"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	x11-libs/gtk+
	net-libs/webkit-gtk:4
"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_unpack() {
	unpack_deb ${A}
}

src_install() {
	dobin usr/bin/cinny

	domenu usr/share/applications/cinny.desktop

	doicon -s 128 usr/share/icons/hicolor/128x128/apps/cinny.png
	doicon -s 256 usr/share/icons/hicolor/256x256@2/apps/cinny.png
	doicon -s 32 usr/share/icons/hicolor/32x32/apps/cinny.png
}
