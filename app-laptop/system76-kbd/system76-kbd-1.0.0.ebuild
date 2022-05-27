# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.1

EAPI=8

CRATES="
	approx-0.5.1
	atty-0.2.14
	autocfg-1.1.0
	bitflags-1.3.2
	boxfnonce-0.1.1
	cc-1.0.73
	cfg-if-1.0.0
	clap-3.1.18
	clap_derive-3.1.18
	clap_lex-0.2.0
	daemonize-0.4.1
	darwin-libproc-0.1.2
	darwin-libproc-sys-0.1.2
	derive_more-0.99.17
	find-crate-0.6.3
	getrandom-0.2.6
	glob-0.3.0
	hashbrown-0.11.2
	heck-0.4.0
	hermit-abi-0.1.19
	indexmap-1.8.1
	lazy_static-1.4.0
	libc-0.2.126
	mach-0.3.2
	memchr-2.5.0
	memoffset-0.6.5
	nix-0.23.1
	num-traits-0.2.15
	num_cpus-1.13.1
	once_cell-1.12.0
	os_str_bytes-6.0.1
	palette-0.6.0
	palette_derive-0.6.0
	phf-0.9.0
	phf_generator-0.9.1
	phf_macros-0.9.0
	phf_shared-0.9.0
	platforms-2.0.0
	ppv-lite86-0.2.16
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro-hack-0.5.19
	proc-macro2-1.0.39
	psutil-3.2.2
	quote-1.0.18
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.3
	serde-1.0.137
	serde_derive-1.0.137
	siphasher-0.3.10
	strsim-0.10.0
	syn-1.0.95
	termcolor-1.1.3
	textwrap-0.15.0
	thiserror-1.0.31
	thiserror-impl-1.0.31
	toml-0.5.9
	unescape-0.1.0
	unicode-ident-1.0.0
	version_check-0.9.4
	wasi-0.10.2+wasi-snapshot-preview1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="System76 keyboard leds daemon."
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://gitlab.com/plexvola/system76-kbd"
SRC_URI="$(cargo_crate_uris)
	https://gitlab.com/plexvola/${PN}/-/archive/${PV}/${P}.tar.gz
"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
	cargo_src_install
	doinitd ./extras/system76-kbd
	insinto /etc/system76-kbd
	doins ./extras/config.toml
}
