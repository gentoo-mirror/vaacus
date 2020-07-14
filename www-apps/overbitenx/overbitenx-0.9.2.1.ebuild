# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="jsp"
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
	sed -i "s|/home/linus|/usr|g" EXAMPLE_onyx.json
	mv EXAMPLE_onyx.json /usr/lib64/mozilla/native-messaging-hosts/onyx.json
	einstalldocs
}
