#servicios
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
        #DM
        sudo systemctl enable lightdm
