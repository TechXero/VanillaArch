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

File System : dosfstools<br />
FSTab -> Label<br />
Bootloader -> Grub<br />
Extras -> Nano<br />
Updates -> Pacman Contrib, yay,<br />
All keyring crap<br />
Install -> downgrade, pkgstats,aurvote<br />
Console -> Generic : Uncheck Vim, add linux-firmware, nmon, neofetch, gpm<br />
Compression -> All<br />
Network tools -> defasult + dnsutils, nmap, netdiscover, net-tools<br />
Services -> default + samba + bluez, pkgstats, ntp<br />
Filesystem -> all<br />
Sound -> all<br />
Xorg -> default + font-util<br />
Fonts -> Defaults -> all -> all<br />
Video drivers -> nvidia, nvidia-dkms<br />

----> Plasma5 Desktop Environment :

Packages -> all minus discover<br />
Plasma Apps -> categories -> system -> default<br />
utilities -> default plus sweeper<br />
Network -> default plus kdeconnect<br />
Graphics -> default<br />
Multimedia -> default minus kmix<br />
kdesk -> default + dolphin-plugins<br />
complements -> all minus partitionmanager<br />

----> Applications

Pacman GUI -> pamac-aur -> pamac-all<br />

# -/ Links :

Panon -> https://store.kde.org/p/1326546<br />
Customization Saver -> https://store.kde.org/p/1298955/<br />

# ----> E.O.F
