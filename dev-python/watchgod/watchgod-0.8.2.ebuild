# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="Simple, modern file watching and code reload in python."
HOMEPAGE="
	https://pypi.org/project/watchgod/
"
SRC_URI="https://files.pythonhosted.org/packages/e8/6e/3904af0715e03fc5b2636cb8cf8b0eabc45b1f2cf6e4cf8453ddb6d23042/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
BDEPEND=""

distutils_enable_tests pytest
