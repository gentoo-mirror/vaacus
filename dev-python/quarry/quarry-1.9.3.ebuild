# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{7..11} )
inherit distutils-r1

DESCRIPTION=" Python library that implements the Minecraft network protocol and data
types"
HOMEPAGE="
	https://pypi.org/project/quarry/
"
SRC_URI="https://github.com/barneygale/${PN}/archive/refs/tags/v${PV}.tar.gz ->
${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/twisted
	dev-python/cryptography
	dev-python/cached-property
	dev-python/bitstring
	dev-python/pyopenssl
	dev-python/service_identity
"
BDEPEND="
	test? (
	dev-python/pytest
	)
"

distutils_enable_tests pytest
