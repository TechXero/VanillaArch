# VanillaArch

# -/ Compile Fresh ArchISO :

1- sudo pacman -S archiso<br />
2- Copy over releng folder from /usr/share/archiso<br />
3- Create "work" & "out" folders<br />
4- sudo mkarchiso -v -w work -o out releng<br />
5- sudo rf out && sudo rf work<br />

# -/ ArchFi Install :

curl -L archfi.sf.net/archfi > archfi<br />
sh archfi<br />

# ------> ArchFi Selections :

----> Main :

File System : dosfstools
FSTab -> Label
Bootloader -> Grub
Extras -> Nano
Updates -> Pacman Contrib, yay,
All keyring crap
Install -> downgrade, pkgstats,aurvote
Console -> Generic : Uncheck Vim, add linux-firmware, nmon, neofetch, gpm
Compression -> All
Network tools -> defasult + dnsutils, nmap, netdiscover, net-tools
Services -> default + samba + bluez, pkgstats, ntp
Filesystem -> all
Sound -> all
Xorg -> default + font-util
Fonts -> Defaults -> all -> all
Video drivers -> nvidia, nvidia-dkms

----> Plasma5 Desktop Environment :

Packages -> all minus discover
Plasma Apps -> categories -> system -> default
utilities -> default plus sweeper
Network -> default plus kdeconnect
Graphics -> default
Multimedia -> default minus kmix
kdesk -> default + dolphin-plugins
complements -> all minus partitionmanager

----> Applications

Pacman GUI -> pamac-aur -> pamac-all

# -/ Links :

Panon -> https://store.kde.org/p/1326546<br />
Customization Saver -> https://store.kde.org/p/1298955/<br />

# ----> E.O.F
