# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( pypy3 python3_{10..12} )

inherit distutils-r1

DESCRIPTION="Arsenal is just a quick inventory and launcher for hacking programs"
HOMEPAGE="https://github.com/Orange-Cyberdefense/arsenal"
SRC_URI="https://github.com/Orange-Cyberdefense/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/libtmux
	dev-python/docutils
	dev-python/pyperclip
	dev-python/pyyaml
	dev-python/pyfzf
"
DEPEND="${RDEPEND}"
