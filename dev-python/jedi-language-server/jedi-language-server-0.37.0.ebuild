# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="A Python language server exclusively for Jedi."
HOMEPAGE="
	https://pypi.org/project/jedi-language-server/
"
SRC_URI="https://github.com/pappasam/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
BDEPEND="
	dev-python/jedi
"

distutils_enable_tests pytest
