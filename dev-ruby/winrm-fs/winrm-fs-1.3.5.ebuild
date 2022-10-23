# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby27 ruby30"

inherit ruby-fakegem

RUBY_FAKEGEM_EXTRADOC="README.md"

DESCRIPTION="Ruby library for file system operations via Windows Remote Management"
HOMEPAGE="https://rubygems.org/gems/winrm-fs"

LICENSE="Ruby-BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

ruby_add_rdepend "dev-ruby/erubi dev-ruby/logging dev-ruby/rubyzip dev-ruby/winrm"
