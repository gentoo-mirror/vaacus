# Copyright 2022-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="The \"Activate Windows\" watermark ported to Linux with Xlib and cairo in C."
HOMEPAGE="https://github.com/MrGlockenspiel/activate-linux"
SRC_URI="https://github.com/MrGlockenspiel/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

IUSE="X wayland"
REQUIRED_USE="|| ( X wayland )"

DEPEND="
	X? (
		x11-libs/cairo
		x11-libs/libXi
		x11-libs/libX11
		x11-base/xorg-proto
		x11-libs/libXt
		x11-libs/libXfixes
		x11-libs/libXinerama
		x11-libs/libXrandr
	)
	wayland? (
		dev-libs/wayland
	)
"
RDEPEND="${DEPEND}"
BDEPEND=""

PATCHES=(
	"${FILESDIR}"/${P}-makefile.diff
)

src_compile() {
	export CFLAGS="-I${S}/src" backends="$(usev wayland) $(usex X "x11" "")" PREFIX="/usr"
	emake || die "emake failed"
}
