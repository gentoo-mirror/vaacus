# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="extremely small 90s-style Doom clone that runs everywhere"
HOMEPAGE="https://gitlab.com/drummyfish/anarch"
EGIT_REPO_URI="https://gitlab.com/drummyfish/${PN}.git"

LICENSE="CC0-1.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="sdl terminal csfml test tcc"
REQUIRED_USE="^^ ( sdl terminal csfml test )
				 alpha? ( !tcc !csfml )
"

RDEPEND="
	sdl? ( media-libs/libsdl2 )
	csfml? ( media-libs/libcsfml )
"
DEPEND="
	tcc? ( dev-lang/tcc )
	${RDEPEND}
"

PATCHES=(
	"${FILESDIR}"/${PN}-makesh.diff
)

src_compile(){
	./make.sh $(use sdl && echo "sdl" || use terminal && echo "terminal" && use csfml || echo "csfml") $(use test && echo "test")
}

src_install(){
	dobin anarch
	default
}
