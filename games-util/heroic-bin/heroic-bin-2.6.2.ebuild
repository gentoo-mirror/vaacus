# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit unpacker desktop xdg

DESCRIPTION="A Native GOG and Epic Games Launcher for Linux, Windows and Mac."
HOMEPAGE="https://heroicgameslauncher.com/"
SRC_URI="https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v${PV}/heroic_${PV}_amd64.deb -> ${P}.deb"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}"

src_unpack() {
	unpack_deb ${A}
}

src_install() {
	find
	insinto /opt/
	doins -r opt/Heroic

	exeinto /opt/Heroic
	doexe opt/Heroic/heroic

	exeinto /opt/Heroic/resources/app.asar.unpacked/build/bin/linux/
	doexe opt/Heroic/resources/app.asar.unpacked/build/bin/linux/*

	domenu usr/share/applications/heroic.desktop
	dodoc usr/share/doc/heroic/changelog.gz

	for i in 16 32 48 64 128 256 512; do
		doicon -s ${i} usr/share/icons/hicolor/${i}x${i}/apps/heroic.png
	done
	default
}
