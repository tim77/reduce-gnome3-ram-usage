#!/bin/sh

systemctl disable libvirtd abrtd

systemctl mask packagekit

systemctl --user mask evolution-addressbook-factory evolution-calendar-factory evolution-source-registry tracker-miner-apps tracker-miner-fs tracker-store

sudo dnf remove gnome-software abrt-desktop -y
