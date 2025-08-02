#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#inicio
    clear
    echo ::{:::::::::::::::::::::::}::
    echo ::__script_de_instalacion__::
    echo ::{:::::::::::::::::::::::}::
    sleep 1
    echo ::{:::::::::::::::}::
    echo ::Version:1.3{beta}::
    echo ::{:::::::::::::::}::
    sleep 1
    echo ::{::::::::::::::::::::::::::::::::::::}::
    echo ::__Te_pedira_la_contraseña_unas_veces__::
    echo ::{::::::::::::::::::::::::::::::::::::}::
    sleep 5
    clear
#pacman
    sudo pacman -Syyu --noconfirm
    sudo pacman -S xfce4 lightdm lightdm-gtk-greeter --noconfirm
    sudo pacman -S flatpak htop fastfetch libreoffice-fresh-es vlc vlc-plugin-ffmpeg konsole discover ark pavucontrol spotify-launcher linux-zen okular kate networkmanager network-manager-applet bluedevil udftools --noconfirm
#flatpak
    echo ::{::::::::::::::::::::::::}::
    echo ::__te_pedira_confirmacion__::
    echo ::{::::::::::::::::::::::::}::
    sleep 5
    flatpak install flathub org.onlyoffice.desktopeditors
#kernel
    sudo pacman -R linux --noconfirm
    sudo grub-mkconfig -o /boot/grub/grub.cfg
#DM
    sudo systemctl enable lightdm.service
#aur
    mkdir /tmp/aur
    cd /tmp/aur
    git clone https://aur.archlinux.org/p7zip-full-bin.git
    cd p7zip-full-bin
    makepkg -si --noconfirm
    cd /tmp/aur
    git clone https://aur.archlinux.org/httpdirfs-git.git
    cd httpdirfs-git
    makepkg -si --noconfirm
    cd /tmp/aur
    git clone https://aur.archlinux.org/ttf-ms-win11-auto.git
    cd ttf-ms-win11-auto
    makepkg -si --noconfirm
    cd /tmp/aur
    git clone https://aur.archlinux.org/librewolf-bin.git
    cd librewolf-bin/
    makepkg -si --noconfirm
    cd /tmp/aur
    git clone https://aur.archlinux.org/webapp-manager-git.git
    cd webapp-manager-git
    makepkg -si --noconfirm
#limpieza
    sudo pacman -Scc --noconfirm
    sudo pacman -Syyu --noconfirm
    sudo pacman -Scc --noconfirm
    cd /tmp
    sudo rm -d -f -r aur
#fin
    echo ::{::::::::::::}::
    echo ::__todo_listo__::
    echo ::{::::::::::::}::
    sleep 1
    echo 5
    sleep 1
    echo 4
    sleep 1
    echo 3
    sleep 1
    echo 2
    sleep 1
    echo 1
    sleep 1
    echo reiniciando
    sleep 1
    reboot
