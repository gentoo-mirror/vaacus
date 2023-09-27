# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop

DESCRIPTION="A privacy-first, open-source platform for knowledge management and collaboration."
HOMEPAGE="https://logseq.com/"
SRC_URI="https://github.com/logseq/logseq/releases/download/${PV}/Logseq-linux-x64-${PV}.zip -> ${P}.zip"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND="
	app-arch/unzip
"

src_unpack() {
	default
	mv "Logseq-linux-x64" "${P}"
}

src_install () {
	insinto "/opt/${P}"
	doins -r *
	into "/opt/${P}"
	dobin Logseq
	dosym "${EPREFIX}/opt/${P}/Logseq" /usr/bin/logseq
	domenu "${FILESDIR}/Logseq.desktop"
	doicon -s 1024 "${FILESDIR}/logseq.png"
}
