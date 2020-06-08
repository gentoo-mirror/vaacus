# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

EGO_SUM=(
	"github.com/zserge/webview v0.0.0-20200121135717-9c1b0a888aa4 h1:UjGpx0KjJegeVC/TZEL/dSCTUXajewpIA1NTF8snadg="
	"github.com/zserge/webview v0.0.0-20200121135717-9c1b0a888aa4/go.mod h1:a1CV8KR4Dd1eP2g+mEijGOp+HKczwdKHWyx0aPHKvo4="
)

go-module_set_globals

DESCRIPTION="An automated Discord token grabber, for use with gtkcord3"
HOMEPAGE="https://github.com/diamondburned/discordlogin"
EGO_PN="github.com/diamondburned/${PN}"
SRC_URI="https://${EGO_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	go build
}

src_install() {
	dobin discordlogin
}
