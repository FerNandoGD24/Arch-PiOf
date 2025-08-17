#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#inicio
    clear
    echo "___________________________"
    echo ":: script de instalacion ::"
    echo "___________________________"
    echo
    sleep 1
    echo "::___________::"
    echo ":: version 2 ::"
    echo "::___________::"
    sleep 1
    echo
    echo "::____________________________________________________::"
    echo ":: elige los controladores graficos en caso de que no ::"
    echo "::        sepas cual eligir apreta la opcion 5        ::"
    echo "::____________________________________________________::"
    sleep 10
#mirrors
    clear
    sudo pacman -Syyuu --noconfirm
#drivers
    clear
    cd
    cd Arch-PiOF
    cd scripts
    bash drivers.sh
    sudo pacman -S xorg-server xorg-xinit --noconfirm
#yay
    clear
    #instalacion
        cd
        cd Arch-PiOF
        cd scripts
        bash yay.sh
#ttf
    clear
    cd
    cd Arch-PiOF
    cd paquetes
    git clone https://github.com/FerNandoGD24/ttf.git
    cd ttf
    bash ttf.sh
    sleep 5
#DM-DE
    clear
    cd
    cd Arch-PiOF
    cd scripts
    bash DE-DM.sh
#paquetes
    clear
    cd
    cd Arch-PiOF
    cd scripts
    bash paquetes.sh
#kernel
clear
    cd
    cd Arch-PiOF
    cd scripts
    bash kernel.sh
#personalizacion
    #carpetas
        clear
        cd
        mkdir .themes
        mkdir .icons
#servicios
clear
    cd
    cd Arch-PiOF
    cd scripts
    bash servicios.sh
#servicio de actualizacion
clear
    cd
    https://github.com/FerNandoGD24/APYAA.git
    cd APYAA
    bash install.sh
    cd
#limpieza
clear
    cd
    cd Arch-PiOF
    cd scripts
    bash limpieza.sh
#fin
clear
    echo "::____________::"
    echo ":: todo listo ::"
    echo "::____________::"
    sleep 5
    echo "::__________::"
    echo ":: apagando ::"
    echo "::__________::"
    sleep 1
    sudo shutdown -h now
