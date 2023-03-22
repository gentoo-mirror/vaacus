# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit qmake-utils

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://gitlab.com/mx-moment/${PN}/-/archive/v${PV}/${PN}-v{$PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="X"

DEPEND="
"

RDEPEND="${DEPEND}"
BDEPEND=""

COMMIT="f3c23f0d889b7e0eda272e31e8536c4fc1e26e0e"

src_unpack() {
	default
	mv ${WORKDIR}/${PN}-v${PV}-${COMMIT} ${S}
}

src_compile() {
	eqmake5 moment.pro
	emake
}
