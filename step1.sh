#
# ~/.bashrc
#

# Refresh Mirrorlist
reflector -c Germany -a 6 --sort rate --save /etc/pacman.d/mirrorlist
pacman -Syy

# Set the time for better results
timedatectl set-ntp true