# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="The \"Activate Windows\" watermark ported to Linux with Xlib and cairo in C."
HOMEPAGE="https://github.com/MrGlockenspiel/activate-linux"
SRC_URI="https://github.com/MrGlockenspiel/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	x11-libs/cairo
	x11-libs/libXi
	x11-libs/libX11
	x11-base/xorg-proto
	x11-libs/libXt
	x11-libs/libXfixes
	x11-libs/libXinerama
"
RDEPEND="${DEPEND}"
BDEPEND=""
