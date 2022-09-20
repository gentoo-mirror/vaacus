# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..11} )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="
	https://pypi.org/project/docstring-to-markdown/
"
SRC_URI="https://files.pythonhosted.org/packages/1e/c5/53e13bb0e3dd8b7fa3595c80deb40a3742dd191a9350141d4daa7ab09a9f/${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
BDEPEND=""

distutils_enable_tests pytest
