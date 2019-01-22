#!/bin/sh

# Disables abrtd daemon which needed for automatic crash reporting and libvirtd which needed for software like gnome-boxes.
systemctl disable libvirtd abrtd

# Masking PackageKit.
systemctl mask packagekit

# Masking evolution services which requires online accounts and tracker service for indexing files.
systemctl --user mask evolution-addressbook-factory evolution-calendar-factory evolution-source-registry tracker-miner-apps tracker-miner-fs tracker-store

# Removes GNOME Software and ABRT-GUI applet.
sudo dnf remove gnome-software abrt-desktop -y
