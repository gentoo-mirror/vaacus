# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7

CRATES="
alsa-0.4.3
alsa-sys-0.3.0
ansi_term-0.11.0
anyhow-1.0.34
app_dirs-1.2.1
atk-0.9.0
atk-sys-0.10.0
atty-0.2.14
autocfg-1.0.1
base64-0.12.3
base64-0.13.0
bindgen-0.53.3
bitflags-1.2.1
bstr-0.2.14
bumpalo-3.4.0
byteorder-1.3.4
bytes-0.5.6
cairo-rs-0.9.1
cairo-sys-rs-0.10.0
cc-1.0.65
cexpr-0.4.0
cfg-if-0.1.10
cfg-if-1.0.0
chfft-0.3.4
chrono-0.4.19
clang-sys-0.29.3
clap-2.33.3
claxon-0.4.3
cloudabi-0.0.3
console_error_panic_hook-0.1.6
core-foundation-0.9.1
core-foundation-sys-0.6.2
core-foundation-sys-0.8.2
coreaudio-rs-0.9.1
coreaudio-sys-0.2.6
cpal-0.12.1
crc32fast-1.2.1
csv-1.1.5
csv-core-0.1.10
either-1.6.1
encoding_rs-0.8.26
fnv-1.0.7
foreign-types-0.3.2
foreign-types-shared-0.1.1
form_urlencoded-1.0.0
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futures-0.3.8
futures-channel-0.3.8
futures-core-0.3.8
futures-executor-0.3.8
futures-io-0.3.8
futures-macro-0.3.8
futures-sink-0.3.8
futures-task-0.3.8
futures-util-0.3.8
gag-0.1.10
gdk-0.13.2
gdk-pixbuf-0.9.0
gdk-pixbuf-sys-0.10.0
gdk-sys-0.10.0
getrandom-0.1.15
gio-0.9.1
gio-sys-0.10.1
glib-0.10.3
glib-macros-0.10.1
glib-sys-0.10.1
glob-0.3.0
gobject-sys-0.10.0
gtk-0.9.2
gtk-sys-0.10.0
h2-0.2.7
hashbrown-0.9.1
heck-0.3.1
hermit-abi-0.1.17
hound-3.4.0
http-0.2.1
http-body-0.3.1
httparse-1.3.4
httpdate-0.3.2
hyper-0.13.9
hyper-tls-0.4.3
idna-0.2.0
indexmap-1.6.0
iovec-0.1.4
ipnet-2.3.0
itertools-0.9.0
itoa-0.4.6
js-sys-0.3.45
kernel32-sys-0.2.2
lazy_static-1.4.0
lazycell-1.3.0
lewton-0.10.1
libc-0.2.80
libloading-0.5.2
lock_api-0.3.4
log-0.4.11
mach-0.3.2
matches-0.1.8
maybe-uninit-2.0.0
memchr-2.3.4
mime-0.3.16
mime_guess-2.0.3
minimp3-0.5.0
minimp3-sys-0.3.2
mio-0.6.22
miow-0.2.2
native-tls-0.2.6
net2-0.2.36
nix-0.15.0
nom-5.1.2
num-complex-0.3.1
num-integer-0.1.44
num-traits-0.2.14
num_cpus-1.13.0
ogg-0.7.1
ole32-sys-0.2.0
once_cell-1.5.2
openssl-0.10.30
openssl-probe-0.1.2
openssl-sys-0.9.58
pango-0.9.1
pango-sys-0.10.0
parking_lot-0.9.0
parking_lot_core-0.6.2
peeking_take_while-0.1.2
percent-encoding-2.1.0
pin-project-0.4.27
pin-project-1.0.2
pin-project-internal-0.4.27
pin-project-internal-1.0.2
pin-project-lite-0.1.11
pin-project-lite-0.2.0
pin-utils-0.1.0
pkg-config-0.3.19
ppv-lite86-0.2.10
proc-macro-crate-0.1.5
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro-hack-0.5.19
proc-macro-nested-0.1.6
proc-macro2-1.0.24
quote-1.0.7
rand-0.7.3
rand_chacha-0.2.2
rand_core-0.5.1
rand_hc-0.2.0
redox_syscall-0.1.57
regex-1.4.2
regex-automata-0.1.9
regex-syntax-0.6.21
remove_dir_all-0.5.3
reqwest-0.10.9
rodio-0.12.0
rustc-hash-1.1.0
rustc_version-0.2.3
ryu-1.0.5
schannel-0.1.19
scoped-tls-1.0.0
scopeguard-1.1.0
security-framework-2.0.0
security-framework-sys-2.0.0
semver-0.9.0
semver-parser-0.7.0
serde-1.0.117
serde_derive-1.0.117
serde_json-1.0.59
serde_urlencoded-0.7.0
shell32-sys-0.1.2
shlex-0.1.1
slab-0.4.2
slice-deque-0.3.0
smallvec-0.6.13
socket2-0.3.17
stdweb-0.1.3
strsim-0.8.0
strum-0.18.0
strum_macros-0.18.0
syn-1.0.52
system-deps-1.3.2
tempfile-3.1.0
textwrap-0.11.0
thiserror-1.0.22
thiserror-impl-1.0.22
time-0.1.44
tinyvec-0.3.4
tinyvec-1.1.0
tinyvec_macros-0.1.0
tokio-0.2.23
tokio-tls-0.3.1
tokio-util-0.3.1
toml-0.5.7
tower-service-0.3.0
tracing-0.1.22
tracing-core-0.1.17
tracing-futures-0.2.4
try-lock-0.2.3
unicase-2.6.0
unicode-bidi-0.3.4
unicode-normalization-0.1.16
unicode-segmentation-1.7.1
unicode-width-0.1.8
unicode-xid-0.2.1
url-2.2.0
uuid-0.8.1
vcpkg-0.2.10
vec_map-0.8.2
version-compare-0.0.10
version_check-0.9.2
void-1.0.2
want-0.3.0
wasi-0.10.0+wasi-snapshot-preview1
wasi-0.9.0+wasi-snapshot-preview1
wasm-bindgen-0.2.68
wasm-bindgen-backend-0.2.68
wasm-bindgen-futures-0.4.18
wasm-bindgen-macro-0.2.68
wasm-bindgen-macro-support-0.2.68
wasm-bindgen-shared-0.2.68
wasm-bindgen-test-0.3.18
wasm-bindgen-test-macro-0.3.18
web-sys-0.3.45
winapi-0.2.8
winapi-0.3.9
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
winreg-0.7.0
ws2_32-sys-0.2.1
xdg-2.2.0
songrec-0.1.2
"

inherit cargo

DESCRIPTION="An open-source Shazam client for Linux, written in Rust."
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/marin-m/SongRec"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="Apache-2.0 BSD-2 BSD GPL-3+ ISC MIT MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
