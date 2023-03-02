# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit unpacker udev

MY_P="${PN/-bin/}-${PVR/-r/_}"

DESCRIPTION="The MCUXpresso IDE."
HOMEPAGE="https://www.nxp.com/design/software/development-software/mcuxpresso-software-and-tools-/mcuxpresso-integrated-development-environment-ide:MCUXpresso-IDE"
SRC_URI="${MY_P}.x86_64.deb.bin"
S="${WORKDIR}"
RESTRICT="fetch"

LICENSE="LA_OPT_NXP_Software_License"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	unpacker_src_unpack
	unpack_deb JLink_Linux_x86_64.deb
	unpack_deb ${MY_P}.x86_64.deb
}

src_install() {
	udev_dorules {etc,lib}/udev/rules.d/*
	insinto /
	dolib.so usr/lib/*
	rm -r usr/lib
	doins -r opt usr
	chmod +x ${D}/usr/local/${MY_P}/ide/mcuxpressoide
	chmod +x ${D}/usr/local/${MY_P}/ide/jre/bin/*
}

pkg_postinst() {
	udev_reload
}

pkg_postrm() {
	udev_reload
}
