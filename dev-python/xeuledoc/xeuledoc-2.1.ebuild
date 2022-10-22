# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

DESCRIPTION="Fetch information about a public Google document."
HOMEPAGE="https://malfrats.industries/"
SRC_URI="https://files.pythonhosted.org/packages/52/0f/092297b8056ce2c8eeac5cd64fb018da19bf37a5b50b3d318f3a525853d2/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/httpx
"
BDEPEND=""

distutils_enable_tests pytest
