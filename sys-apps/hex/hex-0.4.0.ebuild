# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
	ansi_term-0.11.0
	ansi_term-0.12.1
	assert_cmd-1.0.1
	atty-0.2.11
	bitflags-1.0.4
	clap-2.33.3
	difference-2.0.0
	doc-comment-0.3.3
	libc-0.2.47
	no_color-0.1.0
	predicates-1.0.5
	predicates-core-1.0.0
	predicates-tree-1.0.0
	redox_syscall-0.1.50
	redox_termios-0.1.1
	strsim-0.8.0
	termion-1.5.1
	textwrap-0.11.0
	treeline-0.1.0
	unicode-width-0.1.5
	vec_map-0.8.1
	wait-timeout-0.2.0
	winapi-0.3.6
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="Futuristic take on hexdump, made in Rust."
HOMEPAGE="https://github.com/sitkevij/hex"
SRC_URI="$(cargo_crate_uris ${CRATES})"

LICENSE="Apache-2.0 MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="mirror"
