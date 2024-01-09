# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson git-r3

DESCRIPTION="Listen to audio books on Linux"
HOMEPAGE="https://cozy.sh"
EGIT_REPO_URI="https://github.com/geigi/cozy.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

IUSE="mp4"

RDEPEND="
	>=gui-libs/gtk-4.10:4
	>=gui-libs/libadwaita-1.4.0
	>=dev-python/peewee-3.9.6
	media-libs/mutagen
	dev-python/distro
	dev-python/requests
	dev-python/pytz
	dev-python/packaging
	media-libs/gstreamer:1.0
	media-libs/gst-plugins-good:1.0
	media-libs/gst-plugins-bad:1.0
	media-libs/gst-plugins-ugly:1.0
	mp4? (
		media-plugins/gst-plugins-libav:1.0
	)
"
DEPEND="${RDEPEND}"
BDEPEND=""
