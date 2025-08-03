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
    sudo pacman -Syyu --noconfirm
    sudo pacman -S --needed base-devel git --noconfirm
    sudo pacman -S xorg-server --noconfirm
    sudo pacman -S libxss cbindgen clang imake inetutils jq lld llvm nasm nodejs python-setuptools rust unzip wasi-compiler-rt wasi-libc++ wasi-libc++abi wasi-libc yasm zip weston xorg-xwayland --noconfirm
    sudo pacman -S intel-media-driver libva-intel-driver libva-mesa-driver mesa vulkan-intel vulkan noveau vulkan-radeon xf86-video-amdgpu xf86-video-ati xf86-video-noveau xorg-server xorg-xinit
    sudo pacman -S libxt startup-notification mime-types ttf-font ffmpeg --noconfirm
    sudo pacman -S xfce4 lightdm lightdm-gtk-greeter --noconfirm
    sudo pacman -S ttf-font --noconfirm
    sudo pacman -S python-brautifulsoup4 python-configobj python-gobject python-pillow python-setproctitle python-tldextract xapp --noconfirm
    sudo pacman -S flatpak htop fastfetch libreoffice-fresh-es vlc vlc-plugin-ffmpeg konsole discover ark pavucontrol spotify-launcher linux-zen okular kate networkmanager network-manager-applet bluedevil udftools --noconfirm
    sudo pacman -S firefox --noconfirm
    sudo pacman -S gst-plugin-ugly ttf-dejavu ttf-liberation ttf-carlito --noconfirm
#kernel
    sudo pacman -R linux --noconfirm
    sudo grub-mkconfig -o /boot/grub/grub.cfg
#DM
    sudo systemctl enable lightdm.service
#aur
    #aur
        mkdir /tmp/aur
    #p7zip
        cd /tmp/aur
        git clone https://aur.archlinux.org/p7zip-full-bin.git
        cd p7zip-full-bin
        makepkg
        sudo pacman -U p7zip-full-bin-23.01-x86_64.pkg.tar.zst --noconfirm
    #ttf
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
    #xwayland-run
        cd /tmp/aur git clone https://aur.archlinux.org/xwayland-run-git.git
        cd xwayland-run-git
        makepkg
        sudo pacman -U xwayland-run-git.0.0.4.r5.g49b83b9-1-any.tar.zst --noconfirm
    #webapp-manager
        cd /tmp/aur
        git clone https://aur.archlinux.org/webapp-manager-git.git
        cd webapp-manager-git
        makepkg
        sudo pacman -U webapp-manager-git-1.4.2.r0.gffa3ca5-1-any.pkg.tar.zst --noconfirm
    #onlyoffice
        cd /tmp/aur
        git clone https://aur.archlinux.org/onlyoffice-bin.git
        cd onlyoffice-bin
        makepkg
        sudo pacman -U onlyoffice-bin-9.0.3-1-x86_64.pkg.tar.zst --noconfirm
#limpieza
    sudo pacman -Rns $(pacman -Qqdt --noconfirm) --noconfirm
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
    echo apagando
    sleep 1
    sudo shutdown -h now
