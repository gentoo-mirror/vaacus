# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PATCHES=( "${FILESDIR}/setup-tests.patch" )
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9..11} )

inherit distutils-r1 git-r3

DESCRIPTION="pyinfra automates infrastructure using Python."
HOMEPAGE="https://pyinfra.com/"
EGIT_REPO_URI="https://github.com/pyinfra-dev/pyinfra.git"

LICENSE="MIT"
SLOT="0"

RDEPEND="
	dev-python/gevent[${PYTHON_USEDEP}]
	dev-python/paramiko
	dev-python/click
	dev-python/jinja
	dev-python/python-dateutil
	dev-python/pywinrm
	dev-python/typeguard
	dev-python/distro
	dev-python/typing-extensions
"
#BDEPEND=""

distutils_enable_tests pytest
