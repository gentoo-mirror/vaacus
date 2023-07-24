# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Jellyfin Terminal User Interface"
HOMEPAGE="https://github.com/Aanok/jftui"
SRC_URI="https://github.com/Aanok/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	net-misc/curl
	media-video/mpv[libmpv]
	dev-libs/yajl
"
RDEPEND="${DEPEND}"
BDEPEND=""
