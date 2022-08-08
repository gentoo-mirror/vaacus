# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1 git-r3

DESCRIPTION="An audio visualizer that pulses the background of your terminal."
HOMEPAGE="https://github.com/Kharacternyk/barva/"
EGIT_REPO_URI="https://github.com/Kharacternyk/barva.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="media-sound/pulseaudio"
RDEPEND="${DEPEND}"
BDEPEND=""
