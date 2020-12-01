# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="NVIDIA CUDA plugin for XMRig miner"
HOMEPAGE="https://xmrig.com/"
SRC_URI="https://github.com/xmrig/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}"

CMAKE_IN_SOURCE_BUILD="yes"

src_install(){
	pwd
	ls
	dolib.so libxmrig-cuda.so
}
