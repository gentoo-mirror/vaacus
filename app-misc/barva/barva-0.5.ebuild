# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="An audio visualizer that pulses the background of your terminal."
HOMEPAGE="https://github.com/Kharacternyk/barva/"
SRC_URI="https://github.com/Kharacternyk/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="media-sound/pulseaudio"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dodir /usr/share/barva/
	dobin barva
	exeinto /usr/share/barva/
	doexe scripts/*
}
