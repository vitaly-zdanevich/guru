# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="System Information and Benchmark for Linux Systems"
HOMEPAGE="https://www.hardinfo2.org"
SRC_URI="https://github.com/hardinfo2/hardinfo2/archive/refs/tags/release-${PV}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}/${PN}-release-${PV}"

LICENSE="GPL-2+ GPL-3+ LGPL-2.1+"
SLOT="0"
KEYWORDS="~amd64"
IUSE="benchmark dmi +gtk3"

DEPEND="
	gtk3? ( x11-libs/gtk+:3 ) !gtk3? ( x11-libs/gtk+:2 )
	>=dev-libs/glib-2.24
	sys-libs/zlib
	dev-libs/json-glib
	net-libs/libsoup:3.0
	benchmark? ( app-benchmarks/sysbench )
	dmi? ( sys-apps/dmidecode )"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		-DHARDINFO2_GTK3=$(usex gtk3)
	)
	cmake_src_configure
}

pkg_postinst() {
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
