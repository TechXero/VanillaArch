#
# ~/.bashrc
#

# Install base
pacstrap /mnt base linux linux-firmware amd-ucode nano sudo reflector rsync

# Generate FS-Tab & Mount
genfstab -U /mnt >> /mnt/etc/fstab

# CH-Root into Arch
arch-chroot /mnt

# Set up Timezone
ln -sf /usr/share/zoneinfo/Asia/Beirut /etc/localtime
hwclock --systohc

# Set up Locale
nano /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf

# Set Host name
echo "StationXero" >> /etc/hostname

# Config Hosts file
nano /etc/hosts

# Set root pass
passwd

# Grub Install
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

# Enable services
systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable sshd

# Add user
useradd -mG wheel techxero
passwd techxero
usermod -c 'TechXero' techxero
EDITOR=nano visudo

exit

# Timers
sudo systemctl enable --now reflector.timer
sudo systemctl enable --now fstrim.timer

# Build & install Paru with pamac-all
git clone https://aur.archlinux.org/paru
cd paru
makepkg -si

git clone https://aur.archlinux.org/pamac-all
cd pamac-all
makepkg -si

cd

# Enable SDM
sudo systemctl enable sdm


