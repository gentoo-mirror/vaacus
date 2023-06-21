# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby30 ruby31"

RUBY_FAKEGEM_EXTRADOC="README.md"

inherit ruby-fakegem

DESCRIPTION="Ruby library for Windows Remote Management"
HOMEPAGE="https://rubygems.org/gems/winrm"

LICENSE="Apache-2.0"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"

ruby_add_rdepend "
	>=dev-ruby/builder-2.1.2
	=dev-ruby/erubi-1*
	=dev-ruby/gssapi-1*
	=dev-ruby/gyoku-1*
	>=dev-ruby/httpclient-2.2.0.2
	>=dev-ruby/logging-1.6.1
	=dev-ruby/nori-2*
	>=dev-ruby/rubyntlm-0.6.3
"
