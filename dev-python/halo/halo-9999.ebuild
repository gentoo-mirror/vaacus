# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )
inherit git-r3 distutils-r1
DESCRIPTION="Beautiful spinners for terminal, IPython and Jupyter"
HOMEPAGE="https://github.com/manrajgrover/halo"
EGIT_REPO_URI="https://github.com/manrajgrover/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-python/log-symbols
	dev-python/termcolor
	dev-python/colorama
	dev-python/six
"
RDEPEND="${DEPEND}"
BDEPEND=""
