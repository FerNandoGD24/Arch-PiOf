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
    echo ::{:::::::::::::::::::::::::::::}::
    echo ::Te_pedira_la_contraseña_5_veces::
    echo ::{:::::::::::::::::::::::::::::}::
    sleep 5
    clear
#pacman
    sudo pacman -Syyu flatpak htio fastfetch xfce4 xfce4-goodies xorg lightdm lightdm-gtk-greeter libreoffice-fresh-es vlc vlc-plugin-ffmpeg konsole discover ark pavucontrol spotify-launcher linux-zen okular kate networkmanager network-manager-applet bluedevil  --noconfirm
#flatpak
    echo ::{::::::::::::::::::::::::}::
    echo ::__te_pedira_confirmacion__::
    echo ::{::::::::::::::::::::::::}::
    sleep 5
    flatpak install flathub org.onlyoffice.desktopeditors
#kernel
    sudo pacman -R linux --noconfirm
    sudo grub-mkconfig -o /boot/grub/grub.cfg
#servicios
    sudo systemctl enable NetworkManager.service
    sudo systemctl enable ModemManager.service
    sudo systemctl enable lightdm
#aur
    cd /tmp
    mkdir aur
    cd aur
    git clone https://aur.archlinux.org/librewolf-bin.git
    cd librewolf-bin/
    makepkg -sir
    cd /tmp/aur
    git clone https://aur.archlinux.org/webapp-manager-git.git
    cd webapp-manager-git
    makepkg -sir
    cd /tmp/aur
    git clone https://aur.archlinux.org/ttf-ms-win11-auto.git
    cd ttf-ms-win11-auto
    makepkg -sir
    cd /tmp/aur
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
    sleep 5
    reboot
