# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="NVIDIA CUDA plugin for XMRig miner"
HOMEPAGE="https://xmrig.com https://github.com/xmrig/xmrig"
SRC_URI="https://github.com/xmrig/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	>=dev-util/nvidia-cuda-toolkit-8.0
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dolib.so "${BUILD_DIR}/libxmrig-cuda.so"
	dodoc README.md CHANGELOG.md
}
