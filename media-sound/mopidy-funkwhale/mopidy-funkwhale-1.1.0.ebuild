# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1

MY_PN=${PN/-/_}

DESCRIPTION="Mopidy extension for playing music from jellyfin"
HOMEPAGE="https://pypi.org/project/mopidy-funkwhale"
SRC_URI="https://files.pythonhosted.org/packages/82/29/61619376a0dc3cc2ea14a0f4851fafcdf8012dccfddeca0332431b2a604f/${MY_PN}-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	media-sound/mopidy
	dev-libs/gobject-introspection
	dev-python/requests
	dev-python/requests-oauthlib
	dev-python/pygobject
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	default
	mv ${MY_PN}-${PV} ${P}
}

distutils_enable_tests pytest
