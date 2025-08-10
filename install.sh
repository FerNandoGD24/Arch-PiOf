#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#inicio
    clear
    echo ::{:::::::::::::::::::::::}::
    echo ::__script_de_instalacion__::
    echo ::{:::::::::::::::::::::::}::
    echo
    sleep 1
    echo ::{:::::::::::::::}::
    echo ::{__Version:1.5__}::
    echo ::{:::::::::::::::}::
    sleep 6
    clear
    echo ::{::::::::::::::::::::::::::}::
    echo ::__introdusca_su_contraseña__::
    echo ::{::::::::::::::::::::::::::}::
    sleep 1
    echo
    echo ::{:::::::::::::::::::::::::::::::::::::::::::::::::}::
    echo ::{__en_la_instalacion_de_yay_te_pedira_contraseña__}::
    echo ::{:::::::::::::::::::::::::::::::::::::::::::::::::}::
    sleep 10
#mirrors
    sudo pacman -Syyuu --noconfirm
#yay
    #instalacion
        cd /tmp
        mkdir aur
        cd aur
        git clone https://github.com/FerNandoGD24/yay-fork.git
        cd yay-fork
        bash yay.sh
        sleep 2
        yay -Syyuu --noconfirm
#ttf
    cd
    git clone https://github.com/FerNandoGD24/ttf.git
    cd ttf
    bash ttf.sh
    sleep 5
    cd
    rm -fdr ttf
#drivers
    echo ::{:::::::::::::::::::::::::::::::::::::}::
    echo ::{__instalando_controladores_graficos__}::
    echo ::{:::::::::::::::::::::::::::::::::::::}::
    sleep 5
    yay -S intel-media-driver libva-intel-driver libva-mesa-driver mesa vulkan-intel vulkan noveau vulkan-radeon xf86-video-amdgpu xf86-video-ati xf86-video-noveau xorg-server xorg-xinit --noconfirm
    yay -Syyuu --noconfirm
    yay -Scc --noconfirm
#Escritorio
    #paquetes
        echo ::{::::::::::::::::::::::::::::::}::
        echo ::{__instalando_entorno_grafico__}::
        echo ::{::::::::::::::::::::::::::::::}::
        yay -S lxqt --noconfirm
#DM
    #paquetes
        yay -S lightdm lightdm-gtk-greeter --noconfirm
    #servicio
        sudo systemctl enable lightdm
    #limpieza
        yay -Syyuu --noconfirm
        yay -Scc --noconfirm
#utilidades//extras
    echo ::{::::::::::::::::::::::::}::
    echo ::{__instalando_programas__}::
    echo ::{::::::::::::::::::::::::}::
    #discover
         yay -S discover --noconfirm
    #ark
        yay -S ark --noconfirm
    #htop
        yay -S htop --noconfirm
    #fastfetch
        yay -S fastfetch --noconfirm
    #konsole
        yay -S konsole --noconfirm
#multimedia
    #vlc
        #paquete
            yay -S vlc --noconfirm
        #plugins
            yay -S vlc-plugin-ffmpeg --noconfirm
    #spotify
        yay -S spotify-launcher --noconfirm
#ofimatica
    #libreoffice
        #paquetes
            yay -S libreoffice-fresh --noconfirm
        #extras
            yay -S libreoffice-fresh-es --noconfirm
    #kate
        yay -S kate --noconfirm
    #okular
        yay -S okular --noconfirm
    #onlyoffice
        yay -S onlyoffice-bin --noconfirm
#web
    #firefox
        yay -S firefox --noconfirm
    #brave
        yay -S brave-bin --noconfirm
    #webapp manager
        yay -S webapp-manager-git --noconfirm
    #limpieza
        yay -Syyuu --noconfirm
        yay -Scc --noconfirm
#kernel
    echo ::{:::::::::::::::::::}::
    echo ::{__instalando_kernel}::
    echo ::{:::::::::::::::::::}::
    yay -S linux-zen --noconfirm
    yay -R linux --noconfirm
    sudo grub-mkconfig -o /boot/grub/grub.cfg
#personalizacion
    #carpetas
        cd
        mkdir .themes
        mkdir .icons
#servicios
    echo ::{::::::::::::::::::::::::}::
    echo ::{__instalando_servicios__}::
    echo ::{::::::::::::::::::::::::}::
    #internet
        sudo pacman -S networkmanager --noconfirm
        sudo systemctl enable NetworkManager
        sudo systemctl start NetworkManager
        sudo pacman -S wpa_supplicant --noconfirm
        sudo pacman -S networkmanager --noconfirm
        sudo systemctl status NetworkManager
        sudo systemctl restart NetworkManager
    #bluetooth
        sudo pacman -S bluez bluez-utils --noconfirm
        sudo pacman -S blueman --noconfirm
        sudo systemctl start bluetooth.service
        sudo systemctl enable bluetooth.service
        sudo systemctl status bluetooth.service
        sudo systemctl restart bluetooth.service
    #audio
        sudo pacman -S pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber --noconfirm
        sudo systemctl enable --now pipewire
        sudo systemctl enable --now wireplumber
        sudo systemctl --global disable pulseaudio.service pulseaudio.socket
        sudo pacman -S pavucontrol --noconfirm
        systemctl --user status pipewire
        systemctl --user status wireplumber
        systemctl --user restart pipewire
        systemctl --user restart wireplumber
    #bluethooth y audio
        sudo pacman -S pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber bluez bluez-utils blueman --noconfirm
        sudo systemctl enable --now pipewire
        sudo systemctl enable --now wireplumber
        sudo systemctl enable --now bluetooth.service
        sudo pacman -S pavucontrol --noconfirm
        systemctl --user status pipewire
        systemctl --user status wireplumber
        sudo systemctl status bluetooth.service
        systemctl --user restart pipewire
        systemctl --user restart wireplumber
        sudo systemctl restart bluetooth.service
#limpieza
    yay -Syyuu --noconfirm
    yay -Scc --noconfirm
    sudo rm -dfr /tmp/aur
    cd
    sudo rm -dfr Arch-PiOf
#servicio de actualizacion
    cd
    https://github.com/FerNandoGD24/APYAA.git
    cd APYAA
    bash install.sh
    cd
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
