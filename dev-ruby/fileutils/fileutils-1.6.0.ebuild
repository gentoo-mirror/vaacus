# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby27 ruby30 ruby31"

RUBY_FAKEGEM_EXTRADOC="README.md"

inherit ruby-fakegem

DESCRIPTION="Several file utility methods for copying, moving, removing, etc."
HOMEPAGE="https://rubygems.org/gems/fileutils"

LICENSE="Ruby-BSD"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"
