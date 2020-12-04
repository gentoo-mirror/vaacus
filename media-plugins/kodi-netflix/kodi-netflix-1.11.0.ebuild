# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit multilib

DESCRIPTION="Inputstream based Netflix plugin for Kodi"
HOMEPAGE="https://github.com/CastagnaIT/plugin.video.netflix/"

MY_PN="plugin.video.netflix"
MY_P="${MY_PN}-${PV}"

case ${PV} in
9999)
	KEYWORDS=""
	SRC_URI=""
	EGIT_REPO_URI="https://github.com/CastagnaIT/plugin.video.netflix.git"
	inherit git-r3
	;;
*)
	KEYWORDS="~amd64"
	SRC_URI="https://github.com/CastagnaIT/${MY_PN}/archive/v${PV}.tar.gz -> ${MY_P}.tar.gz"
	S="${WORKDIR}/${MY_P}"
	;;
esac

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="
	=media-tv/kodi-19*
	=media-plugins/kodi-inputstream-adaptive-2*
	>=media-plugins/kodi-widevine-1.4.8.970
	media-plugins/kodi-addon-signals
	media-plugins/kodi-inputstreamhelper
	dev-python/pycparser
	dev-python/pycryptodomex
"

src_compile() {
	# no-op
	true
}

src_install() {
	insinto /usr/$(get_libdir)/kodi/addons/plugin.video.netflix
	doins -r *
}
