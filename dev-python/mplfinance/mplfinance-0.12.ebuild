# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

MY_PV=${PV}.8b9

DESCRIPTION="Utilities for the visualization, and visual analysis, of financial data"
HOMEPAGE="https://github.com/matplotlib/mplfinance"
SRC_URI="https://files.pythonhosted.org/packages/24/8e/da49c88443e57889376b8bb28ec3e9b834eb98f46c92c48b0799634f8a0b/${P}.8b9.tar.gz -> ${P}.tar.gz"

LICENSE="mplfinance"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-python/matplotlib
	dev-python/pandas
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	default
	ls
	mv ${PN}-${MY_PV} ${P}
}
