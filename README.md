sensors-lxpanel-plugin-ebuild
=============================
Ebuild, manifest and patch to allow installation of Dan Amlund Thomsen's lm-sensors plugin for lxpanel
on Funtoo/Gentoo.

Here is his git for it: https://github.com/danamlund/sensors-lxpanel-plugin
(ebuild d/l's source automatically from his web page).

I was missing the fan speed from my now discarded Gnome panel, thanks to Mr. Thomsen
I now am missing only the bloat.

Nothing special you really need to do except set up a custom local portage directory if
you haven't already, see for example http://www.gentoo-wiki.info/HOWTO_Installing_3rd_Party_Ebuilds

I suggest using a directory called lxde-base/sensors-lxpanel-plugin to match main portage tree.
Place the sensors-lxpanel-plugin-1.x.ebuild and Manifest in that directory.
Make a files directory in that directory also and place the distdir.patch in the files directory.
Note: This ebuild & plugin should work fine with amd64 but I have not personally tested that, as
I have no 64 bit hardware here.  Let us know if it works for you!

Dependencies
============
Roughly the following per Mr. Thomsen:
lxpanel
glib2.x
gtk+-2.x
libsensors.so.4 (worked fine with my lm_sensors-3.3.3-r2)
menu-cache

Installation
============
emerge -av sensors-lxpanel-plugin

Contact
=======
yuyuyak@gmail.com
