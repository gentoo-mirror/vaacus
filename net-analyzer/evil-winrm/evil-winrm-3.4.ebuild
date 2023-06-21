# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby30 ruby31"

RUBY_FAKEGEM_EXTRAINSTALL="./evil-winrm.rb"

inherit ruby-fakegem

DESCRIPTION="The ultimate WinRM shell for hacking/pentesting"
HOMEPAGE="https://rubygems.org/gems/evil-winrm"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64"

ruby_add_rdepend "
	=dev-ruby/fileutils-1*
	>=dev-ruby/logger-1.4.3
	=dev-ruby/stringio-3*
	>=dev-ruby/winrm-2.3.2
	>=dev-ruby/winrm-fs-1.3.2
"
