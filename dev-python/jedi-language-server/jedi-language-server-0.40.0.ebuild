# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{8..11} )
inherit distutils-r1

DESCRIPTION="A Python language server exclusively for Jedi."
HOMEPAGE="
	https://pypi.org/project/jedi-language-server/
"
SRC_URI="https://github.com/pappasam/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

PATCHES=( "${FILESDIR}/${P}-stray-files.patch" )

RDEPEND="
	dev-python/jedi
	dev-python/pygls
	dev-python/pydantic
	dev-python/docstring-to-markdown
	dev-python/lsprotocol
"
BDEPEND="
	test? (
		dev-python/tox
		dev-python/pytest
		dev-python/isort
		dev-python/pylint
		dev-python/mypy
		dev-python/black
		dev-python/pyhamcrest
		dev-python/python-lsp-jsonrpc
		dev-python/pytest-cov

	)
"

distutils_enable_tests pytest
