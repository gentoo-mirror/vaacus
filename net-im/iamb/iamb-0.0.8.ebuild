# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	adler-1.0.2
	aead-0.4.3
	aes-0.8.2
	ahash-0.7.6
	aho-corasick-0.7.20
	android_system_properties-0.1.5
	anyhow-1.0.70
	anymap2-0.13.0
	arboard-3.2.0
	arrayref-0.3.7
	arrayvec-0.7.2
	assign-1.1.1
	async-lock-2.7.0
	async-once-cell-0.3.1
	async-stream-0.3.4
	async-stream-impl-0.3.4
	async-trait-0.1.67
	atomic-0.5.1
	autocfg-0.1.8
	autocfg-1.1.0
	backoff-0.4.0
	base64-0.13.1
	base64-0.21.0
	base64ct-1.6.0
	bincode-1.3.3
	bit-set-0.5.3
	bit-vec-0.6.3
	bit_field-0.10.2
	bitflags-1.3.2
	bitflags-2.0.2
	blake3-1.3.3
	block-0.1.6
	block-buffer-0.9.0
	block-buffer-0.10.4
	block-padding-0.3.2
	bumpalo-3.12.0
	bytemuck-1.13.1
	byteorder-1.4.3
	bytes-1.4.0
	cassowary-0.3.0
	cbc-0.1.2
	cc-1.0.79
	cfg-if-1.0.0
	chacha20-0.8.2
	chacha20poly1305-0.9.1
	chrono-0.4.24
	cipher-0.3.0
	cipher-0.4.4
	clap-4.1.12
	clap_derive-4.1.12
	clap_lex-0.3.3
	clipboard-win-4.5.0
	cloudabi-0.0.3
	codespan-reporting-0.11.1
	color_quant-1.1.0
	comrak-0.18.0
	const-oid-0.7.1
	constant_time_eq-0.2.5
	convert_case-0.4.0
	core-foundation-0.9.3
	core-foundation-sys-0.8.3
	core-graphics-0.22.3
	core-graphics-types-0.1.1
	cpufeatures-0.2.5
	crc32fast-1.3.2
	crossbeam-channel-0.5.8
	crossbeam-deque-0.8.3
	crossbeam-epoch-0.9.14
	crossbeam-utils-0.8.15
	crossterm-0.25.0
	crossterm-0.26.1
	crossterm_winapi-0.9.0
	crunchy-0.2.2
	crypto-common-0.1.6
	css-color-parser-0.1.2
	ctr-0.9.2
	curve25519-dalek-3.2.1
	cxx-1.0.93
	cxx-build-1.0.93
	cxxbridge-flags-1.0.93
	cxxbridge-macro-1.0.93
	darling-0.14.4
	darling_core-0.14.4
	darling_macro-0.14.4
	dashmap-5.4.0
	der-0.5.1
	derive_builder-0.11.2
	derive_builder_core-0.11.2
	derive_builder_macro-0.11.2
	derive_more-0.99.17
	deunicode-0.4.3
	deunicode-1.3.3
	diff-0.1.13
	digest-0.9.0
	digest-0.10.6
	dirs-4.0.0
	dirs-sys-0.3.7
	discard-1.0.4
	displaydoc-0.2.3
	ed25519-1.5.3
	ed25519-dalek-1.0.1
	either-1.8.1
	emojis-0.5.2
	encoding_rs-0.8.32
	endian-type-0.1.2
	entities-1.0.1
	errno-0.2.8
	errno-0.3.0
	errno-dragonfly-0.1.2
	error-code-2.3.1
	event-listener-2.5.3
	exr-1.6.3
	fancy-regex-0.7.1
	flate2-1.0.25
	flume-0.10.14
	fnv-1.0.7
	foreign-types-0.3.2
	foreign-types-shared-0.1.1
	form_urlencoded-1.1.0
	fs2-0.4.3
	fs_extra-1.3.0
	fuchsia-cprng-0.1.1
	futf-0.1.5
	futures-0.3.27
	futures-channel-0.3.27
	futures-core-0.3.27
	futures-executor-0.3.27
	futures-io-0.3.27
	futures-macro-0.3.27
	futures-signals-0.3.32
	futures-sink-0.3.27
	futures-task-0.3.27
	futures-util-0.3.27
	fxhash-0.2.1
	generic-array-0.14.6
	gensym-0.1.0
	gethostname-0.2.3
	gethostname-0.4.1
	getopts-0.2.21
	getrandom-0.1.16
	getrandom-0.2.8
	gif-0.11.4
	h2-0.3.16
	half-2.2.1
	hashbrown-0.12.3
	heck-0.4.1
	hermit-abi-0.2.6
	hermit-abi-0.3.2
	hkdf-0.12.3
	hmac-0.12.1
	html5ever-0.26.0
	http-0.2.9
	http-body-0.4.5
	httparse-1.8.0
	httpdate-1.0.2
	hyper-0.14.25
	hyper-rustls-0.23.2
	iana-time-zone-0.1.54
	iana-time-zone-haiku-0.1.1
	ident_case-1.0.1
	idna-0.3.0
	image-0.24.5
	indexed_db_futures-0.2.3
	indexmap-1.9.2
	inout-0.1.3
	instant-0.1.12
	intervaltree-0.2.7
	io-lifetimes-1.0.9
	ipnet-2.7.1
	is-terminal-0.4.5
	itertools-0.10.5
	itoa-1.0.6
	jpeg-decoder-0.3.0
	js-sys-0.3.61
	js_int-0.2.2
	js_option-0.1.1
	lazy_static-0.1.16
	lazy_static-1.4.0
	lebe-0.5.2
	libc-0.2.140
	line-wrap-0.1.1
	link-cplusplus-1.0.8
	linked-hash-map-0.5.6
	linux-raw-sys-0.1.4
	linux-raw-sys-0.3.1
	lock_api-0.4.9
	log-0.4.17
	lru-0.8.1
	mac-0.1.1
	malloc_buf-0.0.6
	mandown-0.1.3
	maplit-1.0.2
	markup5ever-0.11.0
	markup5ever_rcdom-0.2.0
	matrix-sdk-0.6.2
	matrix-sdk-base-0.6.1
	matrix-sdk-common-0.6.0
	matrix-sdk-crypto-0.6.0
	matrix-sdk-indexeddb-0.2.0
	matrix-sdk-sled-0.2.0
	matrix-sdk-store-encryption-0.2.0
	memchr-2.5.0
	memoffset-0.6.5
	memoffset-0.8.0
	mime-0.3.17
	mime_guess-2.0.4
	minimal-lexical-0.2.1
	miniz_oxide-0.6.2
	mio-0.8.6
	modalkit-0.0.16
	nanorand-0.7.0
	new_debug_unreachable-1.0.4
	nibble_vec-0.1.0
	nix-0.24.3
	nom-7.1.3
	nu-ansi-term-0.46.0
	num-integer-0.1.45
	num-rational-0.4.1
	num-traits-0.2.15
	num_cpus-1.15.0
	objc-0.2.7
	objc-foundation-0.1.1
	objc_id-0.1.1
	once_cell-1.17.1
	onig-6.4.0
	onig_sys-69.8.1
	opaque-debug-0.3.0
	open-3.2.0
	os_str_bytes-6.5.0
	overload-0.1.1
	parking_lot-0.11.2
	parking_lot-0.12.1
	parking_lot_core-0.8.6
	parking_lot_core-0.9.7
	password-hash-0.4.2
	pathdiff-0.2.1
	pbkdf2-0.11.0
	percent-encoding-2.2.0
	phf-0.10.1
	phf-0.11.1
	phf_codegen-0.10.0
	phf_generator-0.10.0
	phf_shared-0.10.0
	phf_shared-0.11.1
	pin-project-1.0.12
	pin-project-internal-1.0.12
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	pkcs7-0.3.0
	pkg-config-0.3.26
	plist-1.4.3
	png-0.17.7
	poly1305-0.7.2
	ppv-lite86-0.2.17
	precomputed-hash-0.1.1
	pretty_assertions-1.4.0
	proc-macro-crate-1.3.1
	proc-macro2-0.4.30
	proc-macro2-1.0.53
	prost-0.11.8
	prost-derive-0.11.8
	pulldown-cmark-0.9.3
	quick-xml-0.28.1
	quote-0.6.13
	quote-1.0.26
	radix_trie-0.2.1
	rand-0.6.5
	rand-0.7.3
	rand-0.8.5
	rand_chacha-0.1.1
	rand_chacha-0.2.2
	rand_chacha-0.3.1
	rand_core-0.3.1
	rand_core-0.4.2
	rand_core-0.5.1
	rand_core-0.6.4
	rand_hc-0.1.0
	rand_hc-0.2.0
	rand_isaac-0.1.1
	rand_jitter-0.1.4
	rand_os-0.1.3
	rand_pcg-0.1.2
	rand_xorshift-0.1.1
	ratatui-0.20.1
	rayon-1.7.0
	rayon-core-1.11.0
	rdrand-0.4.0
	redox_syscall-0.2.16
	redox_users-0.4.3
	regex-1.7.2
	regex-syntax-0.6.29
	reqwest-0.11.15
	ring-0.16.20
	ropey-1.6.0
	rpassword-7.2.0
	rtoolbox-0.0.1
	ruma-0.7.4
	ruma-client-api-0.15.3
	ruma-common-0.10.5
	ruma-federation-api-0.6.0
	ruma-identifiers-validation-0.9.1
	ruma-macros-0.10.5
	rustc_version-0.4.0
	rustix-0.36.11
	rustix-0.37.7
	rustls-0.20.8
	rustls-pemfile-1.0.2
	rustversion-1.0.12
	ryu-1.0.13
	safemem-0.3.3
	same-file-1.0.6
	scoped_threadpool-0.1.9
	scopeguard-1.1.0
	scratch-1.0.5
	sct-0.7.0
	semver-1.0.17
	serde-1.0.158
	serde_bytes-0.11.9
	serde_derive-1.0.158
	serde_json-1.0.94
	serde_urlencoded-0.7.1
	sha2-0.9.9
	sha2-0.10.6
	sharded-slab-0.1.4
	shell-words-1.1.0
	signal-hook-0.3.15
	signal-hook-mio-0.2.3
	signal-hook-registry-1.4.1
	signature-1.6.4
	simd-adler32-0.3.5
	siphasher-0.3.10
	slab-0.4.8
	sled-0.34.7
	slug-0.1.4
	smallvec-1.10.0
	smawk-0.3.1
	socket2-0.4.9
	spin-0.5.2
	spin-0.9.8
	spki-0.5.4
	str-buf-1.0.6
	str_indices-0.4.1
	string_cache-0.8.7
	string_cache_codegen-0.5.2
	strsim-0.10.0
	subtle-2.4.1
	syn-0.15.44
	syn-1.0.109
	syn-2.0.8
	synstructure-0.12.6
	syntect-5.0.0
	tendril-0.4.3
	termcolor-1.2.0
	terminal_size-0.2.6
	textwrap-0.16.0
	thiserror-1.0.40
	thiserror-impl-1.0.40
	thread_local-1.1.7
	tiff-0.8.1
	time-0.1.45
	time-0.3.20
	time-core-0.1.0
	time-macros-0.2.8
	tinyvec-1.6.0
	tinyvec_macros-0.1.1
	tokio-1.26.0
	tokio-macros-1.8.2
	tokio-rustls-0.23.4
	tokio-util-0.7.7
	toml-0.5.11
	toml_datetime-0.6.1
	toml_edit-0.19.8
	tower-service-0.3.2
	tracing-0.1.37
	tracing-appender-0.2.2
	tracing-attributes-0.1.23
	tracing-core-0.1.30
	tracing-log-0.1.3
	tracing-subscriber-0.3.16
	try-lock-0.2.4
	typed-arena-2.0.2
	typenum-1.16.0
	unicase-2.6.0
	unicode-bidi-0.3.13
	unicode-ident-1.0.8
	unicode-linebreak-0.1.4
	unicode-normalization-0.1.22
	unicode-segmentation-1.10.1
	unicode-width-0.1.10
	unicode-xid-0.1.0
	unicode-xid-0.2.4
	unicode_categories-0.1.1
	universal-hash-0.4.1
	untrusted-0.7.1
	url-2.3.1
	utf-8-0.7.6
	uuid-0.7.4
	uuid-0.8.2
	uuid-1.3.0
	valuable-0.1.0
	vergen-8.2.1
	version_check-0.9.4
	vodozemac-0.3.0
	walkdir-2.3.3
	want-0.3.0
	wasi-0.9.0+wasi-snapshot-preview1
	wasi-0.10.0+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.84
	wasm-bindgen-backend-0.2.84
	wasm-bindgen-futures-0.4.34
	wasm-bindgen-macro-0.2.84
	wasm-bindgen-macro-support-0.2.84
	wasm-bindgen-shared-0.2.84
	wasm-timer-0.2.5
	web-sys-0.3.61
	webpki-0.22.0
	webpki-roots-0.22.6
	weezl-0.1.7
	wildmatch-2.1.1
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-wsapoll-0.1.1
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-0.43.0
	windows-0.46.0
	windows-sys-0.42.0
	windows-sys-0.45.0
	windows-sys-0.48.0
	windows-targets-0.42.2
	windows-targets-0.48.0
	windows_aarch64_gnullvm-0.42.2
	windows_aarch64_gnullvm-0.48.0
	windows_aarch64_msvc-0.42.2
	windows_aarch64_msvc-0.48.0
	windows_i686_gnu-0.42.2
	windows_i686_gnu-0.48.0
	windows_i686_msvc-0.42.2
	windows_i686_msvc-0.48.0
	windows_x86_64_gnu-0.42.2
	windows_x86_64_gnu-0.48.0
	windows_x86_64_gnullvm-0.42.2
	windows_x86_64_gnullvm-0.48.0
	windows_x86_64_msvc-0.42.2
	windows_x86_64_msvc-0.48.0
	winnow-0.4.0
	winreg-0.10.1
	x11rb-0.10.1
	x11rb-protocol-0.10.0
	x25519-dalek-1.2.0
	xdg-2.4.1
	xml5ever-0.17.0
	yaml-rust-0.4.5
	yansi-0.5.1
	zeroize-1.3.0
	zeroize_derive-1.3.3
	zune-inflate-0.2.54
"

inherit cargo

DESCRIPTION="A Matrix chat client that uses Vim keybindings"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/ulyssa/iamb"
SRC_URI="https://github.com/ulyssa/${PN}/archive/refs/tags/v${PV}.tar.gz $(cargo_crate_uris)"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 CC0-1.0 ISC MIT MIT-0 MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"
