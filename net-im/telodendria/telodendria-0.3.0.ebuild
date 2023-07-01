# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_PN=${PN/t/T}

DESCRIPTION="An open source Matrix homeserver implementation written from scratch in ANSI C."
HOMEPAGE="https://telodendria.io/"
SRC_URI="https://telodendria.io/pub/v${PV}/${MY_PN}-v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

IUSE="+cytoplasm static-libs"
REQUIRED_USE="|| ( cytoplasm static-libs )"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

PATCHES=( "${FILESDIR}/${PN}-nomakewhatis.patch" )

src_unpack() {
	default
	mv ${MY_PN}-v${PV} ${P}
}

src_compile() {
	use static-libs || export STATIC=""
	sh ./tools/bin/td
}

src_install() {
	dobin build/telodendria
	doman man/*/*
	use cytoplasm && dolib.so Cytoplasm/out/lib/*.so
	use cytoplasm && doman Cytoplasm/out/man/*/*
}
