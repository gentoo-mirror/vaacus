# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="list Wayland toplevels"
HOMEPAGE="https://git.sr.ht/~leon_plickat/lswt"
SRC_URI="https://git.sr.ht/~leon_plickat/lswt/archive/v1.0.4.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND=""

src_unpack() {
	default
	mv "${PN}-v${PV}" "${P}"
}

src_prepare() {
	sed -i "s|/local||g" Makefile
	default
}
