# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop unpacker xdg

DESCRIPTION="Blablaland"
HOMEPAGE="https://blablaland.co/"
SRC_URI="https://blablaland.co/download/blablaland-desktop_${PV}_amd64.deb"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"
QA_PREBUILT="/opt/Blablaland.co"

src_unpack() {
	unpack_deb ${A}
}

src_install() {
	insinto /
	doins -r opt
	fperms +x /opt/Blablaland.co/blablaland-co

	domenu usr/share/applications/blablaland-co.desktop

	gunzip usr/share/doc/blablaland-co/changelog.gz || die
	dodoc usr/share/doc/blablaland-co/changelog

	for size in {16,32,48,64,128,256,512}; do
		doicon -s ${size} usr/share/icons/hicolor/${size}x${size}/apps/blablaland-co.png
	done
}
