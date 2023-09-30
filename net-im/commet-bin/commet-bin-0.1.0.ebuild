# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="A comfortable chat client, which respects your privacy. Secured with End to End Encryption. Powered by Matrix."
HOMEPAGE="https://commet.chat/"
SRC_URI="https://github.com/commetchat/commet/releases/download/v${PV}/commet-linux-x64.tar.gz -> ${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND=""

src_unpack() {
	default
	mv bundle ${P}
}

src_install() {
	insinto "/opt/${PN}"
	doins -r *
	dosym "../../opt/${PN}/commet" /usr/bin/commet
	newicon data/flutter_assets/assets/images/app_icon/app_icon_transparent.png commet.png
	domenu "$FILESDIR/Commet.desktop"
	fperms +x "/opt/${PN}/commet"
}
