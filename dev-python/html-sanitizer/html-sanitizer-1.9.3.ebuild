# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="Allowlist-based HTML cleaner"
HOMEPAGE="
	https://pypi.org/project/html-sanitizer/
"
SRC_URI="https://github.com/matthiask/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/beautifulsoup4
	dev-python/lxml
"
BDEPEND=""

distutils_enable_tests pytest
