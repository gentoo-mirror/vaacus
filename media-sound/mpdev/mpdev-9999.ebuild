# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="music player daemon events daemon"
HOMEPAGE="https://github.com/mbhangui/mpdev"
EGIT_REPO_URI="https://github.com/mbhangui/mpdev.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="net-libs/libqmail"
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	default
	mv default.configure configure
}
