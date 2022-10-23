# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby24 ruby25 ruby26 ruby27"

inherit ruby-fakegem

DESCRIPTION="Provides a simple logging utility for outputting messages."
HOMEPAGE="https://rubygems.org/gems/logger"

LICENSE="Ruby-BSD"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"
