# Copyright Gentoo Authors 2024
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..13} )

inherit distutils-r1

DESCRIPTION="Official SDK for MediaWiki API version 1.31 or higher"
HOMEPAGE="
	https://github.com/wikimedia/pywikibot
	https://www.mediawiki.org/wiki/Manual:Pywikibot
	https://pypi.org/project/pywikibot
"
SRC_URI="https://github.com/wikimedia/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"

SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/mwparserfromhell[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest
