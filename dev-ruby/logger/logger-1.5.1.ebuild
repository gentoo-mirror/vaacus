# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby30 ruby31"

inherit ruby-fakegem

DESCRIPTION="Provides a simple logging utility for outputting messages."
HOMEPAGE="https://rubygems.org/gems/logger"

LICENSE="Ruby-BSD"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"
