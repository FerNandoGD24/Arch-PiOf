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
#drivers
    cd
    cd Arch-PiOF
    cd scripts
    bash drivers.sh
    yay -S xorg-server xorg-xinit --noconfirm
#yay
    #instalacion
        cd
        cd Arch-PiOF
        cd scripts
        bash yay.sh
#ttf
    cd
    cd Arch-PiOF
    cd paquetes
    git clone https://github.com/FerNandoGD24/ttf.git
    cd ttf
    bash ttf.sh
    sleep 5
#DM-DE
    cd
    cd Arch-PiOF
    cd scripts
    bash DE-DM.sh
#paquetes
    cd
    cd Arch-PiOF
    cd scripts
    bash paquetes.sh
#kernel
    cd
    cd Arch-PiOF
    cd scripts
    bash kernel.sh
#personalizacion
    #carpetas
        cd
        mkdir .themes
        mkdir .icons
#servicios
    cd
    cd Arch-PiOF
    cd scripts
    bash servicios.sh
#servicio de actualizacion
    cd
    https://github.com/FerNandoGD24/APYAA.git
    cd APYAA
    bash install.sh
    cd
#limpieza
    cd
    cd Arch-PiOF
    cd scripts
    bash limpieza.sh
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
