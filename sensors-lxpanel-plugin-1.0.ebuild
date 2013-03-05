# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit eutils



DESCRIPTION="Display temperature/voltages/fan speeds on lxpanel through lm-sensors"
HOMEPAGE="http://danamlund.dk/sensors_lxpanel_plugin/"
SRC_URI="http://danamlund.dk/sensors_lxpanel_plugin/sensors-lxpanel-plugin-1.0.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="gtk"

DEPEND="
	lxde-base/lxpanel
	=dev-libs/glib-2*
	gtk? ( =x11-libs/gtk+-2* )
	>=sys-apps/lm_sensors-3.3.3-r2 
	lxde-base/menu-cache
"

RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}"/destdir.patch
}

src_install() {
	emake DESTDIR="${D}" install || die
}
