# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{7..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="Python library that implements the Minecraft network protocol and data types"
HOMEPAGE="https://quarry.readthedocs.io/en/latest/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/bitstring
	dev-python/cached-property
	dev-python/twisted
	dev-python/cryptography
	dev-python/pyopenssl
	dev-python/service-identity
"
BDEPEND="
	test? (
		  dev-python/pytest
	)
"

distutils_enable_tests pytest
