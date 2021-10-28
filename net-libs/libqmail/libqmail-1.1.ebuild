# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="libqmail is a library of general purpose APIs extracted from qmail"
HOMEPAGE="https://github.com/mbhangui/libqmail"
SRC_URI="https://github.com/mbhangui/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="virtual/libcrypt"
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	default
	mv default.configure configure
}
