#!/usr/bin/env bash
olddir=`pwd`
cd `dirname $0`
sudo zypper addrepo http://download.opensuse.org/repositories/science/openSUSE_11.4/ science
sudo zypper install vtk-qt
echo "`pwd`/run.bash" >> engrid
sudo cp engrid /usr/bin
echo "Icon=`pwd`/src/libengrid/resources/icons/G.png" >> engrid.desktop
sudo cp engrid.desktop /usr/share/applications
cd $olddir
echo "You can start enGrid by typing 'engrid' from the command line (as non-root user) or with the help of the desktop menus."