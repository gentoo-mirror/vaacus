# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Because Firefox isn't complete without Gopherspace."
HOMEPAGE="https://github.com/classilla/overbitenx"
SRC_URI="https://github.com/classilla/${PN}/archive/${PV}.tar.gz"

LICENSE="FFSL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile(){
	emake -f Makefile.generic || die "emake failed"
}

src_install(){
	dobin onyx
	mv EXAMPLE_onyx.json onyx.json
	sed -i "s|/home/linus|/usr|g" onyx.json
	dodir /usr/lib64/mozilla/native-messaging-hosts/
	insinto /usr/lib64/mozilla/native-messaging-hosts/
	doins onyx.json
	einstalldocs
}
