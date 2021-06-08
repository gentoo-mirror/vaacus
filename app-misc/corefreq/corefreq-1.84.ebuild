# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="CoreFreq is a CPU monitoring software designed for the 64-bits Processors."
HOMEPAGE="https://github.com/cyring/CoreFreq"
SRC_URI="https://github.com/cyring/CoreFreq/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack(){
	default
	mv CoreFreq-${PV} ${P}
}
