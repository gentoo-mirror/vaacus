# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby27 ruby30 ruby31"

RUBY_FAKEGEM_EXTRADOC="README.md Changelog.md"

inherit ruby-fakegem

DESCRIPTION="A FFI wrapper around the system GSSAPI library."
HOMEPAGE="https://rubygems.org/gems/gssapi"

LICENSE="MIT"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"

ruby_add_rdepend "
	>=dev-ruby/ffi-1.0.1
"
