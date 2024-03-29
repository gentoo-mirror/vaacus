# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	ab_glyph@0.2.23
	ab_glyph_rasterizer@0.1.8
	addr2line@0.21.0
	adler@1.0.2
	ahash@0.8.8
	aho-corasick@1.1.2
	aliasable@0.1.3
	allocator-api2@0.2.16
	android-activity@0.4.3
	android-properties@0.2.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.11
	anstyle@1.0.6
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anyhow@1.0.79
	approx@0.5.1
	arrayref@0.3.7
	arrayvec@0.7.4
	ash@0.37.3+1.3.251
	async-broadcast@0.5.1
	async-channel@2.2.0
	async-executor@1.8.0
	async-fs@1.6.0
	async-io@1.13.0
	async-io@2.3.1
	async-lock@2.8.0
	async-lock@3.3.0
	async-oneshot@0.5.9
	async-pidfd@0.1.4
	async-process@1.8.1
	async-recursion@1.0.5
	async-signal@0.2.5
	async-task@4.7.0
	async-trait@0.1.77
	atomic-waker@1.1.2
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.13.1
	base64@0.21.7
	bit-set@0.5.3
	bit-vec@0.6.3
	bit_field@0.10.2
	bitflags@1.3.2
	bitflags@2.4.2
	block@0.1.6
	block-buffer@0.10.4
	block-sys@0.1.0-beta.1
	block2@0.2.0-alpha.6
	blocking@1.5.1
	bumpalo@3.14.0
	bytemuck@1.14.3
	bytemuck_derive@1.5.0
	byteorder@1.5.0
	bytes@0.5.6
	bytes@1.5.0
	calloop@0.10.6
	calloop@0.12.4
	calloop-wayland-source@0.2.0
	cc@1.0.83
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	chrono@0.4.34
	clap@4.5.0
	clap_builder@4.5.0
	clap_derive@4.5.0
	clap_lex@0.7.0
	clipboard-win@4.5.0
	clipboard_macos@0.1.0
	clipboard_wayland@0.2.2
	clipboard_x11@0.4.2
	cocoa@0.24.1
	cocoa-foundation@0.1.2
	codespan-reporting@0.11.1
	color_quant@1.1.0
	colorchoice@1.0.0
	com-rs@0.2.1
	concurrent-queue@2.4.0
	const-random@0.1.17
	const-random-macro@0.1.16
	const_format@0.2.32
	const_format_proc_macros@0.2.32
	core-foundation@0.9.4
	core-foundation-sys@0.8.6
	core-graphics@0.22.3
	core-graphics-types@0.1.3
	cosmic-text@0.9.0
	cpufeatures@0.2.12
	crc32fast@1.4.0
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.19
	crunchy@0.2.2
	crypto-common@0.1.6
	cursor-icon@1.1.0
	d3d12@0.6.0
	darling@0.20.5
	darling_core@0.20.5
	darling_macro@0.20.5
	data-url@0.2.0
	deranged@0.3.11
	derivative@2.2.0
	diff@0.1.13
	digest@0.10.7
	dirs@3.0.2
	dirs@4.0.0
	dirs@5.0.1
	dirs-sys@0.3.7
	dirs-sys@0.4.1
	dispatch@0.2.0
	dlib@0.5.2
	dlv-list@0.5.2
	downcast-rs@1.2.0
	either@1.10.0
	encoding_rs@0.8.33
	enumflags2@0.7.9
	enumflags2_derive@0.7.9
	equivalent@1.0.1
	errno@0.3.8
	error-code@2.3.1
	etagere@0.2.10
	euclid@0.22.9
	event-listener@2.5.3
	event-listener@3.1.0
	event-listener@4.0.3
	event-listener@5.0.0
	event-listener-strategy@0.4.0
	event-listener-strategy@0.5.0
	exr@1.72.0
	fast-srgb8@1.0.0
	fastrand@1.9.0
	fastrand@2.0.1
	fdeflate@0.3.4
	flate2@1.0.28
	float-cmp@0.9.0
	flume@0.10.14
	flume@0.11.0
	fnv@1.0.7
	font-types@0.4.2
	fontconfig-parser@0.5.6
	fontdb@0.14.1
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	fork@0.1.23
	form_urlencoded@1.2.1
	freedesktop-desktop-entry@0.5.0
	freedesktop-icons@0.2.6
	fs2@0.4.3
	futures@0.3.30
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-lite@1.13.0
	futures-lite@2.2.0
	futures-macro@0.3.30
	futures-micro@0.5.0
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	futures_codec@0.4.1
	fxhash@0.2.1
	gen-z@0.1.0
	generic-array@0.14.7
	gethostname@0.2.3
	gethostname@0.4.3
	getrandom@0.2.12
	gettext-rs@0.7.0
	gettext-sys@0.21.3
	gif@0.12.0
	gimli@0.28.1
	glam@0.24.2
	glow@0.12.3
	glyphon@0.3.0
	gpu-alloc@0.5.4
	gpu-alloc-types@0.2.0
	gpu-allocator@0.22.0
	gpu-descriptor@0.2.4
	gpu-descriptor-types@0.1.2
	guillotiere@0.6.2
	h2@0.3.24
	half@2.3.1
	hashbrown@0.12.3
	hashbrown@0.14.3
	hassle-rs@0.10.0
	heck@0.4.1
	hermit-abi@0.3.6
	hex@0.4.3
	hexf-parse@0.2.1
	http@0.2.11
	http-body@0.4.6
	httparse@1.8.0
	httpdate@1.0.3
	human-sort@0.2.2
	human_format@1.0.3
	hyper@0.14.28
	hyper-rustls@0.24.2
	iana-time-zone@0.1.60
	iana-time-zone-haiku@0.1.2
	iced@0.10.0
	iced_core@0.10.0
	iced_futures@0.7.0
	iced_graphics@0.9.0
	iced_renderer@0.1.0
	iced_runtime@0.1.1
	iced_style@0.9.0
	iced_tiny_skia@0.1.0
	iced_wgpu@0.11.1
	iced_widget@0.1.3
	iced_winit@0.10.1
	ico@0.3.0
	ident_case@1.0.1
	idna@0.5.0
	image@0.24.8
	imagesize@0.12.0
	indexmap@1.9.3
	indexmap@2.2.3
	instant@0.1.12
	io-lifetimes@1.0.11
	ipnet@2.9.0
	itoa@1.0.10
	jni-sys@0.3.0
	jobserver@0.1.28
	jpeg-decoder@0.3.1
	js-sys@0.3.68
	kamadak-exif@0.5.5
	khronos-egl@4.1.0
	kurbo@0.9.5
	lazy_static@1.4.0
	lebe@0.5.2
	libc@0.2.153
	libloading@0.7.4
	libloading@0.8.1
	libm@0.2.8
	libredox@0.0.1
	libredox@0.0.2
	linux-raw-sys@0.3.8
	linux-raw-sys@0.4.13
	locale_config@0.3.0
	lock_api@0.4.11
	log@0.4.20
	lru@0.11.1
	malloc_buf@0.0.6
	matchers@0.1.0
	memchr@2.7.1
	memmap2@0.5.10
	memmap2@0.6.2
	memmap2@0.9.4
	memoffset@0.6.5
	memoffset@0.7.1
	memoffset@0.9.0
	metal@0.24.0
	mime@0.3.17
	miniz_oxide@0.7.2
	mio@0.8.10
	mutate_once@0.1.1
	naga@0.12.3
	nanorand@0.7.0
	ndk@0.7.0
	ndk-context@0.1.1
	ndk-sys@0.4.1+23.1.7779620
	new_mime_guess@4.0.1
	nix@0.24.3
	nix@0.25.1
	nix@0.26.4
	nu-ansi-term@0.46.0
	num@0.4.1
	num-bigint@0.4.4
	num-complex@0.4.5
	num-conv@0.1.0
	num-integer@0.1.46
	num-iter@0.1.44
	num-rational@0.4.1
	num-traits@0.2.18
	num_cpus@1.16.0
	num_enum@0.5.11
	num_enum@0.6.1
	num_enum_derive@0.5.11
	num_enum_derive@0.6.1
	numtoa@0.2.4
	objc@0.2.7
	objc-foundation@0.1.1
	objc-sys@0.2.0-beta.2
	objc2@0.3.0-beta.3.patch-leaks.3
	objc2-encode@2.0.0-pre.2
	objc_exception@0.1.2
	objc_id@0.1.1
	object@0.32.2
	onagre-launcher@1.2.4
	onagre-launcher-plugins@1.2.4
	onagre-launcher-service@1.2.4
	onagre-launcher-toolkit@0.1.2
	once_cell@1.19.0
	option-ext@0.2.0
	orbclient@0.3.47
	ordered-multimap@0.7.1
	ordered-stream@0.2.0
	overload@0.1.1
	owned_ttf_parser@0.20.0
	palette@0.7.4
	palette_derive@0.7.4
	parking@2.2.0
	parking_lot@0.11.2
	parking_lot@0.12.1
	parking_lot_core@0.8.6
	parking_lot_core@0.9.9
	percent-encoding@2.3.1
	pest@2.7.7
	pest_derive@2.7.7
	pest_generator@2.7.7
	pest_meta@2.7.7
	phf@0.11.2
	phf_generator@0.11.2
	phf_macros@0.11.2
	phf_shared@0.11.2
	pico-args@0.5.0
	pin-project@0.4.30
	pin-project@1.1.4
	pin-project-internal@0.4.30
	pin-project-internal@1.1.4
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	piper@0.2.1
	pkg-config@0.3.30
	png@0.17.11
	polling@2.8.0
	polling@3.4.0
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	pretty_assertions@1.4.0
	proc-macro-crate@1.3.1
	proc-macro2@1.0.78
	profiling@1.0.14
	qoi@0.4.1
	quick-xml@0.28.2
	quick-xml@0.31.0
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	range-alloc@0.1.3
	rangemap@1.5.0
	raw-window-handle@0.5.2
	rayon@1.8.1
	rayon-core@1.12.1
	rctree@0.5.0
	read-fonts@0.15.5
	recently-used-xbel@1.0.0
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex@1.10.3
	regex-automata@0.1.10
	regex-automata@0.4.5
	regex-syntax@0.6.29
	regex-syntax@0.8.2
	renderdoc-sys@1.0.0
	reqwest@0.11.24
	result@1.0.0
	resvg@0.35.0
	rgb@0.8.37
	ring@0.17.7
	ron@0.8.1
	roxmltree@0.18.1
	roxmltree@0.19.0
	rust-ini@0.20.0
	rustc-demangle@0.1.23
	rustc-hash@1.1.0
	rustix@0.37.27
	rustix@0.38.31
	rustls@0.21.10
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rustybuzz@0.7.0
	rustybuzz@0.8.0
	ryu@1.0.16
	scoped-tls@1.0.1
	scopeguard@1.2.0
	sct@0.7.1
	sctk-adwaita@0.5.4
	serde@1.0.196
	serde-xml-rs@0.5.1
	serde_derive@1.0.196
	serde_ini@0.2.0
	serde_json@1.0.113
	serde_repr@0.1.18
	serde_urlencoded@0.7.1
	serde_with@2.3.3
	serde_with_macros@2.3.3
	sha1@0.10.6
	sha2@0.10.8
	sharded-slab@0.1.7
	shell-words@1.1.0
	signal-hook-registry@1.4.1
	simd-adler32@0.3.7
	simplecss@0.2.1
	siphasher@0.3.11
	slab@0.4.9
	sled@0.34.7
	slotmap@1.0.7
	smallvec@1.13.1
	smithay-client-toolkit@0.16.1
	smithay-client-toolkit@0.18.1
	smithay-clipboard@0.7.0
	socket2@0.4.10
	socket2@0.5.5
	softbuffer@0.2.1
	speculoos@0.11.0
	spin@0.9.8
	spirv@0.2.0+1.5.4
	static_assertions@1.1.0
	str-buf@1.0.6
	strict-num@0.1.1
	strsim@0.10.0
	strsim@0.11.0
	svg_fmt@0.4.1
	svgtypes@0.11.0
	swash@0.1.12
	syn@1.0.109
	syn@2.0.48
	sync_wrapper@0.1.2
	sys-locale@0.3.1
	sysfs-class@0.1.3
	system-configuration@0.5.1
	system-configuration-sys@0.5.0
	temp-dir@0.1.12
	tempfile@3.10.0
	termcolor@1.4.1
	thiserror@1.0.57
	thiserror-impl@1.0.57
	thread_local@1.1.7
	tiff@0.9.1
	time@0.3.34
	time-core@0.1.2
	time-macros@0.2.17
	tiny-keccak@2.0.2
	tiny-skia@0.8.4
	tiny-skia@0.10.0
	tiny-skia-path@0.8.4
	tiny-skia-path@0.10.0
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio@1.36.0
	tokio-macros@2.2.0
	tokio-rustls@0.24.1
	tokio-stream@0.1.14
	tokio-util@0.7.10
	toml@0.5.11
	toml_datetime@0.6.5
	toml_edit@0.19.15
	tower-service@0.3.2
	tracing@0.1.40
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	try-lock@0.2.5
	ttf-parser@0.18.1
	ttf-parser@0.19.2
	ttf-parser@0.20.0
	twox-hash@1.6.3
	typenum@1.17.0
	ucd-trie@0.1.6
	uds_windows@1.1.0
	unicase@2.7.0
	unicode-bidi@0.3.15
	unicode-bidi-mirroring@0.1.0
	unicode-ccc@0.1.2
	unicode-general-category@0.6.0
	unicode-ident@1.0.12
	unicode-linebreak@0.1.5
	unicode-normalization@0.1.22
	unicode-script@0.5.5
	unicode-segmentation@1.11.0
	unicode-vo@0.1.0
	unicode-width@0.1.11
	unicode-xid@0.2.4
	untrusted@0.9.0
	url@2.5.0
	urlencoding@2.1.3
	usvg@0.35.0
	usvg-parser@0.35.0
	usvg-text-layout@0.35.0
	usvg-tree@0.35.0
	utf8parse@0.2.1
	valuable@0.1.0
	vec_map@0.8.2
	version_check@0.9.4
	void@1.0.2
	waker-fn@1.1.1
	want@0.3.1
	ward@2.1.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.91
	wasm-bindgen-backend@0.2.91
	wasm-bindgen-futures@0.4.41
	wasm-bindgen-macro@0.2.91
	wasm-bindgen-macro-support@0.2.91
	wasm-bindgen-shared@0.2.91
	wasm-timer@0.2.5
	wayland-backend@0.1.2
	wayland-backend@0.3.3
	wayland-client@0.29.5
	wayland-client@0.30.2
	wayland-client@0.31.2
	wayland-commons@0.29.5
	wayland-csd-frame@0.3.0
	wayland-cursor@0.29.5
	wayland-cursor@0.31.1
	wayland-protocols@0.29.5
	wayland-protocols@0.31.2
	wayland-protocols-wlr@0.2.0
	wayland-scanner@0.29.5
	wayland-scanner@0.30.1
	wayland-scanner@0.31.1
	wayland-sys@0.29.5
	wayland-sys@0.30.1
	wayland-sys@0.31.1
	web-sys@0.3.68
	webpki-roots@0.25.4
	weezl@0.1.8
	wgpu@0.16.3
	wgpu-core@0.16.1
	wgpu-hal@0.16.2
	wgpu-types@0.16.1
	widestring@1.0.2
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-wsapoll@0.1.1
	winapi-x86_64-pc-windows-gnu@0.4.0
	window_clipboard@0.3.0
	windows@0.44.0
	windows-core@0.52.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winit@0.28.7
	winnow@0.5.40
	winreg@0.50.0
	x11-dl@2.21.0
	x11rb@0.11.1
	x11rb@0.13.0
	x11rb-protocol@0.11.1
	x11rb-protocol@0.13.0
	xcursor@0.3.5
	xdg@2.5.2
	xdg-home@1.1.0
	xkeysym@0.2.0
	xml-rs@0.8.19
	xmlparser@0.13.6
	xmlwriter@0.1.0
	yansi@0.5.1
	yazi@0.1.6
	zbus@3.15.0
	zbus_macros@3.15.0
	zbus_names@2.6.0
	zeno@0.2.3
	zerocopy@0.7.32
	zerocopy-derive@0.7.32
	zune-inflate@0.2.54
	zvariant@3.15.0
	zvariant_derive@3.15.0
	zvariant_utils@1.0.1
"

inherit cargo

DESCRIPTION="A general purpose application launcher for X and wayland  inspired by rofi/wofi and alfred."
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/oknozor/onagre"
SRC_URI="${CARGO_CRATE_URIS}
https://github.com/onagre-launcher/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="gui-apps/onagre-launcher"
RDEPEND="${DEPEND}"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"
