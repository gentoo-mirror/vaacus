# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

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
