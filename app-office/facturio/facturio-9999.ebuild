# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1 git-r3

DESCRIPTION="Un logiciel de gestion de factures."
HOMEPAGE="https://github.com/facturio/facturio"
EGIT_REPO_URI="https://github.com/facturio/facturio.git"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	dev-python/pygobject
	sci-geosciences/geopy
	dev-python/borb
"
RDEPEND="${DEPEND}"
BDEPEND=""
