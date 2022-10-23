# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby24 ruby25 ruby26 ruby27"

RUBY_FAKEGEM_EXTRADOC="README.md CHANGELOG.md"

RUBY_FAKEGEM_RECIPE_TEST="rspec"

inherit ruby-fakegem

DESCRIPTION="Gyoku translates Ruby Hashes to XML"
HOMEPAGE="https://rubygems.org/gems/gyoku"

LICENSE="MIT"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"

ruby_add_rdepend "
	>=dev-ruby/builder-2.1.2
"
