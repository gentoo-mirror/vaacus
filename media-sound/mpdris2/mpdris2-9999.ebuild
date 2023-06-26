# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{10..11})

inherit python-r1 autotools git-r3

MY_PN="${PN/d/D}"

DESCRIPTION="An implementation of the MPRIS 2 interface as a client for MPD"
HOMEPAGE="https://github.com/eonpatapon/mpDris2"
EGIT_REPO_URI="https://github.com/eonpatapon/${PN}.git"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="${PYTHON_DEPS}
	>=dev-python/dbus-python-0.80[$PYTHON_USEDEP]
	>=dev-python/pygobject-3.28.3[$PYTHON_USEDEP]
	dev-python/python-mpd2[$PYTHON_USEDEP]"
RDEPEND="${DEPEND}"

DOCS="AUTHORS COPYING INSTALL NEWS README README.md"

src_prepare() {
	default
	eautoreconf
}

src_install() {
	emake install DESTDIR="${D}" || die "Failed to install"
}
