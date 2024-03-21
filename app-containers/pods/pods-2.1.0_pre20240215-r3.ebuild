# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aes@0.8.4
	aho-corasick@1.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anyhow@1.0.79
	ashpd@0.7.0
	async-broadcast@0.5.1
	async-channel@2.2.0
	async-io@1.13.0
	async-io@2.3.1
	async-lock@2.8.0
	async-lock@3.3.0
	async-process@1.8.1
	async-recursion@1.0.5
	async-signal@0.2.5
	async-task@4.7.0
	async-trait@0.1.77
	atomic-waker@1.1.2
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.13.1
	bitflags@1.3.2
	bitflags@2.4.2
	block-buffer@0.10.4
	block-padding@0.3.3
	block@0.1.6
	blocking@1.5.1
	bumpalo@3.14.0
	byteorder@1.5.0
	bytes@0.5.6
	bytes@1.5.0
	cairo-rs@0.19.2
	cairo-sys-rs@0.19.2
	cbc@0.1.2
	cc@1.0.83
	cfg-expr@0.15.7
	cfg-if@1.0.0
	chrono@0.4.34
	cipher@0.4.4
	concurrent-queue@2.4.0
	containers-api@0.9.0
	core-foundation-sys@0.8.6
	cpufeatures@0.2.12
	crc32fast@1.4.0
	crossbeam-utils@0.8.19
	crypto-common@0.1.6
	deranged@0.3.11
	derivative@2.2.0
	digest@0.10.7
	enumflags2@0.7.9
	enumflags2_derive@0.7.9
	equivalent@1.0.1
	errno@0.3.8
	error-chain@0.12.4
	event-listener-strategy@0.4.0
	event-listener-strategy@0.5.0
	event-listener@2.5.3
	event-listener@3.1.0
	event-listener@4.0.3
	event-listener@5.0.0
	fastrand@1.9.0
	fastrand@2.0.1
	field-offset@0.3.6
	filetime@0.2.23
	flate2@1.0.28
	fnv@1.0.7
	form_urlencoded@1.2.1
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-lite@1.13.0
	futures-lite@2.2.0
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	futures@0.3.30
	futures_codec@0.4.1
	gdk-pixbuf-sys@0.19.0
	gdk-pixbuf@0.19.2
	gdk4-sys@0.8.0
	gdk4-wayland-sys@0.8.0
	gdk4-wayland@0.8.0
	gdk4-x11-sys@0.8.0
	gdk4-x11@0.8.0
	gdk4@0.8.0
	generic-array@0.14.7
	getrandom@0.2.12
	gettext-rs@0.7.0
	gettext-sys@0.21.3
	gimli@0.28.1
	gio-sys@0.19.0
	gio@0.19.2
	glib-macros@0.19.2
	glib-sys@0.19.0
	glib@0.19.2
	gobject-sys@0.19.0
	graphene-rs@0.19.2
	graphene-sys@0.19.0
	gsk4-sys@0.8.0
	gsk4@0.8.0
	gtk4-macros@0.8.0
	gtk4-sys@0.8.0
	gtk4@0.8.0
	hashbrown@0.14.3
	heck@0.4.1
	hermit-abi@0.3.6
	hex@0.4.3
	hkdf@0.12.4
	hmac@0.12.1
	hostname@0.3.1
	http-body@0.4.6
	http@0.2.11
	httparse@1.8.0
	httpdate@1.0.3
	hyper@0.14.28
	hyperlocal@0.8.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.60
	idna@0.5.0
	indexmap@2.2.3
	inout@0.1.3
	instant@0.1.12
	io-lifetimes@1.0.11
	io-lifetimes@2.0.3
	itoa@1.0.10
	js-sys@0.3.68
	lazy_static@1.4.0
	libadwaita-sys@0.6.0
	libadwaita@0.6.0
	libc@0.2.153
	libm@0.2.8
	linux-raw-sys@0.3.8
	linux-raw-sys@0.4.13
	locale_config@0.3.0
	log@0.4.20
	malloc_buf@0.0.6
	match_cfg@0.1.0
	memchr@2.7.1
	memoffset@0.7.1
	memoffset@0.9.0
	mime@0.3.17
	miniz_oxide@0.7.2
	mio@0.8.10
	multi_log@0.1.2
	names@0.14.0
	nix@0.26.4
	num-bigint-dig@0.8.4
	num-bigint@0.4.4
	num-complex@0.4.5
	num-conv@0.1.0
	num-integer@0.1.46
	num-iter@0.1.44
	num-rational@0.4.1
	num-traits@0.2.18
	num@0.4.1
	num_cpus@1.16.0
	num_threads@0.1.7
	objc-foundation@0.1.1
	objc@0.2.7
	objc_id@0.1.1
	object@0.32.2
	once_cell@1.19.0
	oo7@0.2.2
	ordered-stream@0.2.0
	pango-sys@0.19.0
	pango@0.19.2
	paris@1.5.15
	parking@2.2.0
	paste@1.0.14
	pbkdf2@0.12.2
	percent-encoding@2.3.1
	pin-project-internal@0.4.30
	pin-project-internal@1.1.4
	pin-project-lite@0.2.13
	pin-project@0.4.30
	pin-project@1.1.4
	pin-utils@0.1.0
	piper@0.2.1
	pkg-config@0.3.30
	podman-api-stubs@0.9.0
	polling@2.8.0
	polling@3.4.0
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	proc-macro-crate@1.3.1
	proc-macro-crate@3.1.0
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.78
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.3.5
	redox_syscall@0.4.1
	regex-automata@0.4.5
	regex-syntax@0.8.2
	regex@1.10.3
	rustc-demangle@0.1.23
	rustc_version@0.4.0
	rustix@0.37.27
	rustix@0.38.31
	ryu@1.0.16
	semver@1.0.21
	serde@1.0.196
	serde_derive@1.0.196
	serde_json@1.0.113
	serde_repr@0.1.18
	serde_spanned@0.6.5
	sha1@0.10.6
	sha2@0.10.8
	signal-hook-registry@1.4.1
	simplelog@0.12.1
	slab@0.4.9
	smallvec@1.13.1
	socket2@0.4.10
	socket2@0.5.5
	sourceview5-sys@0.8.0
	sourceview5@0.8.0
	spin@0.5.2
	static_assertions@1.1.0
	subtle@2.5.0
	syn@1.0.109
	syn@2.0.48
	syslog@6.1.0
	system-deps@6.2.0
	tar@0.4.40
	target-lexicon@0.12.13
	temp-dir@0.1.12
	tempfile@3.10.0
	termcolor@1.1.3
	thiserror-impl@1.0.57
	thiserror@1.0.57
	time-core@0.1.2
	time-macros@0.2.17
	time@0.3.34
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-stream@0.1.14
	tokio-tar@0.3.1
	tokio@1.36.0
	toml@0.8.10
	toml_datetime@0.6.5
	toml_edit@0.19.15
	toml_edit@0.21.1
	toml_edit@0.22.5
	tower-service@0.3.2
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing@0.1.40
	try-lock@0.2.5
	typenum@1.17.0
	uds_windows@1.1.0
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	url@2.5.0
	utf8parse@0.2.1
	version-compare@0.1.1
	version_check@0.9.4
	vte4-sys@0.7.0
	vte4@0.7.1
	vte@0.13.0
	vte_generate_state_changes@0.1.1
	waker-fn@1.1.1
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.91
	wasm-bindgen-macro-support@0.2.91
	wasm-bindgen-macro@0.2.91
	wasm-bindgen-shared@0.2.91
	wasm-bindgen@0.2.91
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winnow@0.5.40
	winnow@0.6.1
	xattr@1.3.1
	xdg-home@1.1.0
	zbus@3.15.0
	zbus_macros@3.15.0
	zbus_names@2.6.0
	zeroize@1.7.0
	zeroize_derive@1.4.2
	zvariant@3.15.0
	zvariant_derive@3.15.0
	zvariant_utils@1.0.1
"

declare -A GIT_CRATES=(
	[podman-api]='https://github.com/vv9k/podman-api-rs;f35e6f9f9fdb9d9023aed341252c16c0ad9796d1;podman-api-rs-%commit%'
)

inherit cargo gnome2-utils meson xdg

COMMIT="f4c41092cf68d4142c6164ae1b8c9879fa56f643"
DESCRIPTION="Keep track of your podman containers"
HOMEPAGE="https://github.com/marhkb/pods"
SRC_URI="
	https://github.com/marhkb/pods/archive/${COMMIT}.tar.gz -> ${P}.gh.tar.gz
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}/${PN}-${COMMIT}"

LICENSE="GPL-3"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD MIT MPL-2.0
	Unicode-DFS-2016
"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	gui-libs/gtksourceview
	gui-libs/vte
"
DEPEND="
	dev-libs/glib
	gui-libs/gtk[wayland]
	gui-libs/libadwaita
"
BDEPEND="
	app-alternatives/ninja
	dev-libs/appstream-glib
	virtual/pkgconfig
"

# Rust
QA_FLAGS_IGNORED="usr/bin/${PN}"

PATCHES=(
	"${FILESDIR}"/disable-clippy-test-2.1.0.patch
)

src_configure() {
	meson_src_configure
	ln -s "${CARGO_HOME}" "${BUILD_DIR}/cargo-home" || die
}

pkg_postinst() {
	xdg_pkg_postinst
	gnome2_schemas_update
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_pkg_postrm
	gnome2_schemas_update
	xdg_icon_cache_update
}