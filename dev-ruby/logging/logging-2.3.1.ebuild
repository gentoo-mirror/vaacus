# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby30 ruby31"

RUBY_FAKEGEM_EXTRADOC="README.md History.txt"

inherit ruby-fakegem

DESCRIPTION="A flexible logging library for use in Ruby programs."
HOMEPAGE="https://rubygems.org/gems/logging https://github.com/TwP/logging"

LICENSE="MIT"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"

ruby_add_rdepend "
	=dev-ruby/little-plugger-1.1*
	=dev-ruby/multi_json-1.15*
"

ruby_add_bdepend "test? ( dev-ruby/test-unit )"
