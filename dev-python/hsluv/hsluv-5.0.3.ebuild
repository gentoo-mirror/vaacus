# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9..11} )
inherit distutils-r1

DESCRIPTION="Python implementation of HSLuv (revision 4)"
HOMEPAGE="https://www.hsluv.org/"
SRC_URI="https://github.com/hsluv/${PN}-python/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
BDEPEND=""

distutils_enable_tests pytest

src_unpack() {
	default
	mv "${WORKDIR}/${PN}-python-${PV}" "${S}"
}
