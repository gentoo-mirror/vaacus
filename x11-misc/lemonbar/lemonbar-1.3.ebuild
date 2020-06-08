# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A featherweight, lemon-scented, bar based on xcb"
HOMEPAGE="https://github.com/LemonBoy/bar"
SRC_URI="https://github.com/LemonBoy/bar/archive/v1.3.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	default
	mv bar-${PV} ${P}
}
