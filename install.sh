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
    sudo pacman -Syyu
    #dependencias
        sudo pacman -S -needed git base-devel go xorg-server libxss cbindgen clang imake inetutils jq lld llvm nasm nodejs python-setuptools rust unzip wasi-compiler-rt wasi-libc++ wasi-libc++abi wasi-libc yasm zip weston xorg-xwayland libxt startup-notification mime-types ttf-font ffmpeg ttf-font python-brautifulsoup4 python-configobj python-gobject python-pillow python-setproctitle python-tldextract xapp flatpak gst-plugins-ugly ttf-dejavu ttf-liberation ttf-carlito python-beautifulsoup4 xapp python-xapp python-tldextract python-setproctitle python-pillow python-configobj python-beautifulsoup4  --noconfirm
    #drivers
        sudo pacman -S intel-media-driver libva-intel-driver libva-mesa-driver mesa vulkan-intel vulkan noveau vulkan-radeon xf86-video-amdgpu xf86-video-ati xf86-video-noveau xorg-server xorg-xinit --noconfirm
    #escritorio
        sudo pacman -S lxqt --noconfirm
    #Display manager
        sudo pacman -S lightdm lightdm-gtk-greeter --noconfirm
        sudo systemctl enable lightdm
    #extras
        sudo pacman -S htop fastfetch konsole --noconfirm
    #multimedia
        sudo pacman -S vlc vlc-plugin-ffmpeg spotify-launcher --noconfirm
    #ofimatica
        sudo pacman -S libreoffice-fresh-es okular --noconfirm
    #utilidades
        sudo pacman -S discover ark kate --noconfirm
    #web
        sudo pacman -S firefox brave-browser --noconfirm
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
#Aur
    #yay
        cd /tmp
        mkdir aur
        cd aur
        git clone https://github.com/FerNandoGD24/yay-fork.git
        cd yay-fork
        makepkg
        sudo pacman -U yay-12.5.0-1-x86_64.pkg.tar.zst --noconfirm
        cd /tmp/aur
        mkdir ttf
        cd ttf
        git clone https://github.com/FerNandoGD24/ttf.git
        cd ttf
        cat ttfp_* > ttf_u.tar.xz
        xz -d ttf_u.tar.xz
        mkdir /usr/share/fonts
        mkdir /usr/local/share/fonts
        mkdir ~/.fonts
        tar -xvf ttf_u.tar -C /usr/share/fonts
        tar -xvf ttf_u.tar -C /usr/local/share/fonts
        tar -xvf ttf_u.tar -C ~/.fonts
#yay
    yay -Syyuu --noconfirm
    #ofimatica
        yay -S onlyoffice-bin --noconfirm
    #internet
        yay -S webapp-manager-git --noconfirm
#kernel
    sudo pacman -S linux-zen --noconfirm
    sudo pacman -R linux --noconfirm
    sudo grub-mkconfig -o /boot/grub/grub.cfg
#extras
    cd
    mkdir .themes
    mkdir .icons
#limpieza
    sudo pacman -Rns $(pacman -Qqdt --noconfirm) --noconfirm
    sudo pacman -Syyu --noconfirm
    sudo pacman -Scc --noconfirm
    yay -Rns $(yay -Qpdt --noconfirm) --noconfirm
    yay -Syyu --noconfirm
    yay -Scc --noconfirm
    sudo rm -dfr /tmp/aur
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
    
