# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )
inherit distutils-r1

DESCRIPTION="Command line tool to keep track of your favorite playlists on YouTube."
HOMEPAGE="https://github.com/woefe/ytcc/"
SRC_URI="https://github.com/woefe/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-python/wcwidth
	dev-python/click
	net-misc/yt-dlp
"
RDEPEND="${DEPEND}"
