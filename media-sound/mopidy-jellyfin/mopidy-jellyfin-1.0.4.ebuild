# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1

MY_PN=${PN/m/M}
MY_PN=${MY_PN/j/J}

DESCRIPTION="Mopidy extension for playing music from jellyfin"
HOMEPAGE="https://pypi.org/project/Mopidy-Jellyfin"
SRC_URI="https://files.pythonhosted.org/packages/d8/91/4e64134d357262f378c90efe133ca26c0038d4fc55a22e15c121bbc320a8/${MY_PN}-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	media-sound/mopidy
	dev-python/pykka
	dev-python/unidecode
	dev-python/websocket-client
	media-plugins/gst-plugins-soup
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	default
	mv ${MY_PN}-${PV} ${P}
}

distutils_enable_tests pytest
