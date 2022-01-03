# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit wrapper

MY_PN=${PN/-bin/}
MY_PV=${PV%.*}

DESCRIPTION="Open-source, non-custodial, privacy focused bitcoin wallet."
HOMEPAGE="https://wasabiwallet.io"
SRC_URI="https://github.com/zkSNACKs/WalletWasabi/releases/download/v${PV}/${MY_PN^}-${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	default
	mv ${MY_PN^}-${MY_PV} ${P}
}

src_install() {
	insinto "/opt/${PN}"
	doins -r "."
	fperms +x "/opt/${PN}/wassabee"
	dosym "/opt/${PN}/wassabee" "/usr/bin/wassabee"
}
