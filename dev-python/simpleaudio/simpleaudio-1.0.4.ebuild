# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="Simple, asynchronous audio playback for Python 3."
HOMEPAGE="
	https://pypi.org/project/simpleaudio/
"
SRC_URI="https://github.com/hamiltron/py-simple-audio/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
BDEPEND=""

distutils_enable_tests pytest

src_unpack() {
	default
	mv ${WORKDIR}/py-simple-audio-${PV} ${S}
}
