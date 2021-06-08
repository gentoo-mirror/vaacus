# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
	adler-1.0.2
	adler32-1.2.0
	aho-corasick-0.5.3
	ansi_colours-1.0.2
	ansi_term-0.11.0
	atty-0.2.14
	autocfg-1.0.1
	base64-0.13.0
	bitflags-1.2.1
	bytemuck-1.5.1
	byteorder-1.4.3
	cc-1.0.67
	cfg-if-1.0.0
	clap-2.33.3
	color_quant-1.1.0
	console-0.14.1
	crc32fast-1.2.1
	crossbeam-channel-0.5.1
	crossbeam-deque-0.8.0
	crossbeam-epoch-0.9.3
	crossbeam-utils-0.8.3
	crossterm-0.19.0
	crossterm_winapi-0.7.0
	ctrlc-3.1.9
	deflate-0.8.6
	either-1.6.1
	encode_unicode-0.3.6
	getrandom-0.2.2
	gif-0.11.2
	hermit-abi-0.1.18
	image-0.23.14
	instant-0.1.9
	jpeg-decoder-0.1.22
	kernel32-sys-0.2.2
	lazy_static-0.2.11
	lazy_static-1.4.0
	libc-0.2.93
	lock_api-0.4.3
	log-0.4.14
	make-cmd-0.1.0
	memchr-0.1.11
	memoffset-0.6.3
	miniz_oxide-0.3.7
	miniz_oxide-0.4.4
	mio-0.7.11
	miow-0.3.7
	nix-0.20.0
	ntapi-0.3.6
	num-integer-0.1.44
	num-iter-0.1.42
	num-rational-0.3.2
	num-traits-0.2.14
	num_cpus-1.13.0
	parking_lot-0.11.1
	parking_lot_core-0.8.3
	png-0.16.8
	ppv-lite86-0.2.10
	rand-0.8.3
	rand_chacha-0.3.0
	rand_core-0.6.2
	rand_hc-0.3.0
	rayon-1.5.0
	rayon-core-1.9.0
	redox_syscall-0.2.6
	regex-0.1.80
	regex-syntax-0.3.9
	remove_dir_all-0.5.3
	scoped_threadpool-0.1.9
	scopeguard-1.1.0
	semver-parser-0.6.2
	signal-hook-0.1.17
	signal-hook-registry-1.3.0
	sixel-0.3.2
	sixel-sys-0.3.1
	smallvec-1.6.1
	strsim-0.8.0
	tempfile-3.2.0
	termcolor-1.1.2
	terminal_size-0.1.16
	textwrap-0.11.0
	thread-id-2.0.0
	thread_local-0.2.7
	tiff-0.6.1
	unicode-width-0.1.8
	utf8-ranges-0.1.3
	vec_map-0.8.2
	viu-1.3.0
	viuer-0.4.0
	wasi-0.10.2+wasi-snapshot-preview1
	weezl-0.1.4
	winapi-0.2.8
	winapi-0.3.9
	winapi-build-0.1.1
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0"

inherit cargo

DESCRIPTION="Simple terminal image viewer written in Rust."
HOMEPAGE="https://github.com/atanunq/viu"
SRC_URI="$(cargo_crate_uris ${CRATES})"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-lang/rust"
RDEPEND="${DEPEND}"
BDEPEND=""
