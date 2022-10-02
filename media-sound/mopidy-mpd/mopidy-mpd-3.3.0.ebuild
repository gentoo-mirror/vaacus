# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1

DESCRIPTION="Mopidy extension for controlling playback from MPD clients"
HOMEPAGE="https://github.com/mopidy/mopidy-mpd"
SRC_URI="https://github.com/mopidy/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	media-sound/mopidy
	dev-python/pykka
"
RDEPEND="${DEPEND}"
BDEPEND=""

distutils_enable_tests pytest
