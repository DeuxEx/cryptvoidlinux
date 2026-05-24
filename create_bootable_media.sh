
#list devices
lsblk


#prepare the usb drive
wipefs --all --force /dev/sda
mkfs.vfat -F32 /dev/sda




#install pre-requsts
sudo xbps-install -S git xorriso squashfs-tools mtools liblz4


#clone github void-mklive
git clone https://github.com/void-linux/void-mklive.git


#enter
cd void-mklive


#run mklive to build an iso and add custom modules
./mklive.sh -o void-custom3.iso -p "git nano NetworkManager wpa_supplicant tree mc fastfetch htop btop xorg-minimal vsv firefox qt6-wayland xdg-desktop-portal-gtk xdg-user-dirs-gtk wireplumber seatd mutter wayland-utils xf86-video-intel kde-baseapps kde-plasma metalog elogind breeze alsa-plugins-pulseaudio alsa-tools kpipewire pipewire wireplumber cryptsetup grub-x86_64-efi mesa-opencl mesa-vulkan-intel lvm2 btrfs-progs dosfstools kbd xtools"





