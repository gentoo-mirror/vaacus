# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PATCHES=( ${FILESDIR}/${P}-version.patch )
PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

DESCRIPTION="Utilities for the visualization, and visual analysis, of financial data"
HOMEPAGE="https://github.com/dhaitz/mplcyberpunk"
SRC_URI="https://github.com/dhaitz/mplcyberpunk/archive/refs/tags/v${PV}.tar.gz
-> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-python/matplotlib
"
RDEPEND="${DEPEND}"
BDEPEND=""
