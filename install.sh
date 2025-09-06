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
    sleep 6
    clear
    echo ::{::::::::::::::::::::::::}::
    echo ::__introdusca_su_contraseña::
    echo ::{::::::::::::::::::::::::}::
#pacman
    sudo pacman -Syy    #drivers
        sudo pacman -S --needed intel-media-driver libva-intel-driver libva-mesa-driver mesa vulkan-intel vulkan noveau vulkan-radeon xf86-video-amdgpu xf86-video-ati xf86-video-noveau xorg-server xorg-xinit --noconfirm
    #escritorio
        sudo pacman -S --needed lxqt --noconfirm
    #Display manager
        sudo pacman -S --needed lightdm lightdm-gtk-greeter --noconfirm
        sudo systemctl enable lightdm
    #extras
        sudo pacman -S --needed htop fastfetch konsole --noconfirm
    #multimedia
        sudo pacman -S --needed vlc vlc-plugin-ffmpeg spotify-launcher --noconfirm
    #ofimatica
        sudo pacman -S --needed libreoffice-fresh-es okular --noconfirm
    #utilidades
        sudo pacman -S --needed discover ark kate --noconfirm
    #web
        sudo pacman -S --needed firefox brave-browser --noconfirm
    #internet
        sudo pacman -S --needed networkmanager --noconfirm
        sudo systemctl enable NetworkManager
        sudo systemctl start NetworkManager
        sudo pacman -S --needed wpa_supplicant --noconfirm
        sudo pacman -S --needed networkmanager --noconfirm
        sudo systemctl status NetworkManager
        sudo systemctl restart NetworkManager
    #bluetooth
        sudo pacman -S --needed bluez bluez-utils --noconfirm
        sudo pacman -S --needed blueman --noconfirm
        sudo systemctl start bluetooth.service
        sudo systemctl enable bluetooth.service
        sudo systemctl status bluetooth.service
        sudo systemctl restart bluetooth.service
    #audio
        sudo pacman -S --needed pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber --noconfirm
        sudo systemctl enable --now pipewire
        sudo systemctl enable --now wireplumber
        sudo systemctl --global disable pulseaudio.service pulseaudio.socket
        sudo pacman -S --needed pavucontrol --noconfirm
        systemctl --user status pipewire
        systemctl --user status wireplumber
        systemctl --user restart pipewire
        systemctl --user restart wireplumber
    #bluethooth y audio
        sudo pacman -S --needed pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber bluez bluez-utils blueman --noconfirm
        sudo systemctl enable --now pipewire
        sudo systemctl enable --now wireplumber
        sudo systemctl enable --now bluetooth.service
        sudo pacman -S --needed pavucontrol --noconfirm
        systemctl --user status pipewire
        systemctl --user status wireplumber
        sudo systemctl status bluetooth.service
        systemctl --user restart pipewire
        systemctl --user restart wireplumber
        sudo systemctl restart bluetooth.service
#Aur
    #yay
        cd
        cd Arch-PiOf
        cd apps
        sudo pacman -U --needed yay.tar.zst --noconfirm
    #ttf
        cd /tmp/aur
        mkdir ttf
        cd ttf
        git clone https://github.com/FerNandoGD24/ttf.git
        cd ttf
        sudo cat ttfp_* > ttf_u.tar.xz
        sudo xz -d ttf_u.tar.xz
        sudo mkdir /usr/share/fonts
        sudo mkdir /usr/local/share/fonts
        sudo mkdir ~/.fonts
        sudo tar -xvf ttf_u.tar -C /usr/share/fonts
        sudo tar -xvf ttf_u.tar -C /usr/local/share/fonts
        sudo tar -xvf ttf_u.tar -C ~/.fonts
#yay
    yay -Syyuu --needed --noconfirm
    #ofimatica            
        yay -S --needed onlyoffice-bin --noconfirm
    #internet
        cd
        cd Arch-PiOf
        cd apps
        sudo pacman -U --needed webapp.tar.zst --noconfirm
#extras
    cd
    mkdir .themes
    mkdir .icons
#limpieza
    sudo pacman -Syyu --needed --noconfirm
    sudo pacman -Scc --noconfirm
    yay -Syyu --needed --noconfirm
    yay -Scc --noconfirm
    sudo rm -dfr /tmp/aur

#kernel
    sudo pacman -S --needed linux-lts --noconfirm
    sudo pacman -R linux --noconfirm
    sudo grub-mkconfig -o /boot/grub/grub.cfg
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
    echo apagando
    sleep 1
    sudo shutdown -h now
