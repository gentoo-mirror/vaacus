# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(python3_{8..12})
PYPI_NO_NORMALIZE=1
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="Flask Unsign is a penetration testing utility that attempts to uncover a Flask server's secret key"
HOMEPAGE="https://github.com/Paradoxis/Flask-Unsign"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+wordlist"

RDEPEND="
	wordlist? (
			  dev-python/flask-unsign-wordlist
	)
"
DEPEND="${RDEPEND}"
