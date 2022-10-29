# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Simple Build System for Native Languages"
HOMEPAGE="https://git.dec05eba.com/sibs"

if [[ ${PV} == 9999 ]]; then
	EGIT_REPO_URI="https://repo.dec05eba.com/sibs"
	inherit git-r3
else
	SRC_URI=""  # to do
fi

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

DEPEND="
	net-misc/curl
	app-arch/libarchive
	dev-util/ninja
	dev-util/cmake
	dev-util/pkgconf
	dev-util/ccache
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin "${BUILD_DIR}/${PN}"
}
