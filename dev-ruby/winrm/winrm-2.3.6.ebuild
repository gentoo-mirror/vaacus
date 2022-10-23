# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby27 ruby30"

RUBY_FAKEGEM_EXTRADOC="README.md"

inherit ruby-fakegem

DESCRIPTION="Ruby library for Windows Remote Management"
HOMEPAGE="https://rubygems.org/gems/winrm"

LICENSE="Apache-2.0"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc test"

ruby_add_rdepend "
	dev-ruby/builder
	dev-ruby/erubi
	dev-ruby/gssapi
	dev-ruby/gyoku
	dev-ruby/httpclient
	dev-ruby/logging
	dev-ruby/nori
	dev-ruby/rexml
	dev-ruby/rubyntlm
"
