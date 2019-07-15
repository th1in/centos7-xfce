#version=DEVEL


# Config
auth --enableshadow --passalgo=sha512
cdrom
graphical
firstboot --enable
ignoredisk --only-use=sda
keyboard --vckeymap=us --xlayouts='us'
lang en_US.UTF-8
eula --agreed
selinux --disabled
firewall --disabled
timezone America/New_York --isUtc
bootloader --location=mbr --boot-drive=sda
clearpart --none --initlabel
part / --size 5120 --fstype ext4
reboot

%include centos-xfce-repo.ks

%packages
@base
@core
@xfce-desktop
@guest-desktop-agents
@fonts
@dial-up
@multimedia
@x11

# Anaconda installer
anaconda
@anaconda-tools

# For UEFI/Secureboot support
grub2-efi-x64-cdboot
efibootmgr
shim-x64

# Extra packages
kernel
cheese
gnome-disk-utility
p7zip
p7zip-plugins
unar
cups
hplip
mousepad
network-manager-applet
system-config-printer
system-config-date
system-config-language
system-config-users
system-config-firewall
transmission
ristretto
xarchiver
simple-scan
galculator
mupdf
gnote
xchat
filezilla
brasero
audacious
audacious-libs
audacious-plugins
audacious-plugins-freeworld-mp3
lxtask
simplescreenrecorder
vlc
chromium
chromium-libs-media-freeworld


#RPM Repository
rpmfusion-free-release-7
rpmfusion-nonfree-release-7

#installing libreoffice
libreoffice6.2-*
libobasis6.2-*

#codecs
gstreamer1-plugins-good
gstreamer1-plugins-ugly
gstreamer1-plugins-bad-freeworld
gstreamer1-libav
gstreamer
gstreamer-plugins-base
gstreamer-plugins-good
gstreamer-plugins-bad-free
gstreamer-plugins-ugly
gstreamer-plugins-bad
gstreamer-ffmpeg
x264
x265
ffmpeg
ffmpeg-libs

#skip packages
-abrt-*
-evolution
-thunderbird
-firefox


%end



%include centos-xfce-live.ks





