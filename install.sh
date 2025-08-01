#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#inicio
    clear
    echo
    echo
    echo
    echo ::::::::::::::::::::::::::::::::::
    echo ::::__script_de_instalacion___::::
    echo ::::::::::::::::::::::::::::::::::
    echo
    echo
    echo
    echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    echo ::::_a_continuacion_tendras_que_poner_tu_contraseña_3_veces_cuando_el_script_termine_tendras_que_poner_una_vez_mas_tu_contraseña::::
    echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    echo
    echo
    echo
sleep 5
#yay
    clear
    cd /tmp
    mkdir install
    cd install
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -sir --noconfirm
    cd /tmp
    sudo rm -d -f -r install
#htop & fastfetch
    clear
    sudo pacman -Sy htop fastfetch --noconfirm
#instalacion del escritorio
    clear
    sudo pacman -Sy xfce4 xfce4-goodies xorg --noconfirm
#lightdm
    clear
    sudo pacman -Sy lightdm lightdm-gtk-greeter --noconfirm
    sudo systemctl enable lightdm
#libreoffice
    clear
    sudo pacman -Sy libreoffice-fresh-es --noconfirm
#kde
    clear
    sudo pacman -Sy okular kate --noconfirm
#vlc
    clear
    sudo pacman -S vlc vlc-plugin-ffmpeg --noconfirm
#librewolf
    clear
    yay -Sy librewolf-bin --noconfirm
#pamac
    clear
    yay -Sy libpamac-flatpak --noconfirm
    yay -Sy pamac-flatpak --noconfirm
#konsole
    clear
    sudo pacman -Sy konsole --noconfirm
#discover
    sudo pacman -Sy discover --noconfirm
#ark
    clear
    sudo pacman -Sy ark --noconfirm
#web-apps
    clear
    yay -Sy webapp-manager --noconfirm
#audio
    sudo pacman -Sy pavucontrol --noconfirm
#spotify
    clear
    sudo pacman -Sy spotify-launcher --noconfirm
#fuentes
    clear
    cd
    mkdir ~/.fonts
    yay -Sy ttf-ms-win11-auto --noconfirm
#kernel
    clear
    sudo pacman -Sy linux-zen --noconfirm
    sudo pacman -R linux --noconfirm
    sudo grub-mkconfig -o /boot/grub/grub.cfg
#internet
    clear
    sudo pacman -Sy networkmanager network-manager-applet usb_modeswitch --noconfirm
    sudo pacman -S network-manager-applet --noconfirm
    sudo systemctl enable NetworkManager.service
    sudo systemctl enable ModemManager.service
#bluetooth#
    clear
    sudo pacman -Sy bluez bluez-utils bluedevil blueberry --noconfirm
#limpiar
    clear
    sudo pacman -Sc --noconfirm
    yay -Sc --noconfirm
#servicios
    clear
    systemctl enable lightdm
#actualizar & limpiar
    clear
    sudo pacman -Syyu --noconfirm
    yay -Syyu --noconfirm
    sudo pacman -Scc --noconfirm
    yay -Scc --noconfirm
#otro
    cd
    mkdir ~/.themes
    mkdir ~/.icons
    
sleep 5
    #fin
    echo ::::::::::::::
    echo ::Todo_listo::
    echo ::::::::::::::    
sleep 5
#reinicio
    clear
    sudo reboot
