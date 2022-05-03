# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_9 )
inherit distutils-r1

DESCRIPTION="borb is a library for reading, creating and manipulating PDF files in python."
HOMEPAGE="
	https://pypi.org/project/borb/
	https://borbpdf.com
"
SRC_URI="https://github.com/jorisschellekens/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-python/fonttools
	dev-python/pillow
	dev-python/qrcode
	dev-python/requests
"
RDEPEND=""
BDEPEND=""

distutils_enable_tests pytest

src_unpack(){
	default
	rm -r ${P}/tests
}
