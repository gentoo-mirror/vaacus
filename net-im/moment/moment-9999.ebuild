# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 qmake-utils

DESCRIPTION="A Matrix client; forked from Mirage."
HOMEPAGE="https://mx-moment.xyz/"
EGIT_REPO_URI="https://gitlab.com/mx-moment/moment.git"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS=""
IUSE="X"

DEPEND="
	dev-python/hsluv
	dev-python/redbaron
	dev-python/plyer
	dev-python/simpleaudio
	dev-python/pymediainfo
	dev-python/html-sanitizer
	dev-python/watchgod

	>=dev-python/pillow-7.0.0
	>=dev-python/aiofiles-0.4.0
	>=dev-python/appdirs-1.4.4
	>=media-gfx/cairosvg-2.4.2
	>=dev-python/filetype-1.0.7
	dev-libs/olm

	dev-qt/qtcore:5
	dev-qt/qtdeclarative:5
	dev-qt/qtquickcontrols2:5
	dev-qt/qtsvg:5
	dev-qt/qtgraphicaleffects:5
	dev-qt/qtimageformats:5

	X? (
		x11-libs/libX11
		x11-libs/libXScrnSaver
	)

	dev-python/pyotherside
	media-libs/libjpeg-turbo
	sys-libs/zlib
	media-libs/tiff
	media-libs/libwebp
	media-libs/openjpeg
	media-libs/libmediainfo
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	if use X; then
		eqmake5 PREFIX="/usr" moment.pro
	else
		eqmake5 moment.pro PREFIX="/usr" CONFIG+=no-x11
	fi
}

src_install() {
	INSTALL_ROOT="${D}" emake install
}
