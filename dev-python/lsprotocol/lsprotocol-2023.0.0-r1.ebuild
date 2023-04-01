# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{9..11} )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="
	https://pypi.org/project/lsprotocol/
"
SRC_URI="https://files.pythonhosted.org/packages/source/l/${PN}/${P}${PR/r/a}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/attrs
	dev-python/cattrs
	dev-python/jsonschema
	dev-python/importlib_resources
"
BDEPEND="
	test? (
		dev-python/pyhamcrest
	)
"

distutils_enable_tests pytest

src_unpack() {
	default
	mv ${P}${PR/r/a} ${P}
}
