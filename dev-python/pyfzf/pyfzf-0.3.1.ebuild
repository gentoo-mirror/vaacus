# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( pypy3 python3_{10..12} )

inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for junegunn's fuzzyfinder (fzf)"
HOMEPAGE="
	https://pypi.org/project/pyfzf/
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="app-shells/fzf"
BDEPEND=""

distutils_enable_tests pytest
