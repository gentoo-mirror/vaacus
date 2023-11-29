# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit unpacker systemd

MY_PN=${PN/-bin/}

DESCRIPTION="Web Based Event Viewer (GUI) for Suricata EVE Events in Elastic Search"
HOMEPAGE="https://evebox.org/"
SRC_URI="https://evebox.org/files/release/latest/${MY_PN}-${PV}-amd64.deb -> ${P}.deb"
S=${WORKDIR}

LICENSE="MIT"
SLOT="0.17.2"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND=""

src_install() {
	dobin usr/bin/evebox
	gzip -d usr/share/doc/evebox/*.gz
	dodoc usr/share/doc/evebox/*
	keepdir /var/lib/evebox

	insinto /etc/evebox
	doins etc/evebox/evebox.yaml
	doins -r lib/
}
