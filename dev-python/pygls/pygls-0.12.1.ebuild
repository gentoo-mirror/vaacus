# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

DESCRIPTION="a pythonic generic language server (pronounced like \"pie glass\")."
HOMEPAGE="
	https://pypi.org/project/pygls/
"
SRC_URI="https://files.pythonhosted.org/packages/27/f4/e43329edc5cb00243d17404eca58c13bafc70168c12a2d224a61fee83ffc/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/toml
	dev-python/typeguard
"
BDEPEND=""

distutils_enable_tests pytest
