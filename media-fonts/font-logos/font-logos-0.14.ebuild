# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="An icon font providing popular linux distro's logos"
HOMEPAGE="https://lukas-w.github.io/font-logos"
SRC_URI="https://github.com/lukas-w/${PN}/releases/download/v${PV}/${PN}-v${PV}.zip -> ${P}.zip"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	default
	mv ${PN}-v${PV} ${P}
}

src_compile() {
	true
}

src_install() {
	dodir /usr/share/fonts/font-logos/
	echo ${D}
	sleep 5
	cp -R assets/* ${D}/usr/share/fonts/font-logos || die "Install failed !"
}
