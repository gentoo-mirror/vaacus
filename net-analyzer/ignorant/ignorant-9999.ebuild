# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_9 )

inherit git-r3
inherit distutils-r1

DESCRIPTION="ignorant allows you to check if a phone number is used on different sites"
HOMEPAGE="https://github.com/megadose/ignorant"
EGIT_REPO_URI="https://github.com/megadose/ignorant"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

DEPEND="
	dev-python/termcolor
	dev-python/beautifulsoup4
	dev-python/httpx
	dev-python/trio
	dev-python/tqdm
"
RDEPEND="${DEPEND}"
BDEPEND=""
