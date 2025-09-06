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
#instalar yay
    cd apps
    sudo pacman -U --needed yay.tar.zst --noconfirm

#drivers
mostrar_menu() {
  clear
  echo "Instalacion de drivers"
  echo "1) ATI"
  echo "2) AMD"
  echo "3) INTEL"
  echo "4) NVIDIA"
  echo "5) ALL (OPENSOURCE)"
}

while true; do
  mostrar_menu
  start_time=$(date +%s)
  timeout=60

  read -t $timeout -rp "Ingrese su opción [1-5]: " opcion

  if [ -z "$opcion" ]; then
    clear
    echo -e "\n⏳ Tiempo agotado..."
    echo "All (OpenSource)"
    sudo pacman -S intel-media-driver libva-intel-driver libva-mesa-driver mesa vulkan-intel vulkan noveau vulkan-radeon xf86-video-amdgpu xf86-video-ati xf86-video-noveau --noconfirm
    break
  fi

  case $opcion in
    1)
      clear
      echo "Ati"
      sudo pacman -S xf86-video-ati mesa-amber lib32-mesa-amber --noconfirm
      break
      ;;
    2)
      clear
      echo "Amd"
      sudo pacman -S xf86-video-amdgpu mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon libva-mesa-driver mesa-vdpau --noconfirm
      break
      ;;
    3)
      clear
      echo "Intel"
      sudo pacman -S xf86-video-intel mesa mesa-amber lib32-mesa lib32-mesa-amber vulkan-intel lib32-vulkan-intel libva-intel-driver libva-utils --noconfirm
      break
      ;;
    4)
      clear
      echo "Nvidia"
      sudo pacman -S xf86-video-noveau mesa lib32-mesa vulkan-nouveau lib32-vulkan-nouveau --noconfirm
      break
      ;;
    5)
      clear
      echo "All (OpenSource)"
      sudo pacman -S intel-media-driver libva-intel-driver libva-mesa-driver mesa vulkan-intel vulkan noveau vulkan-radeon xf86-video-amdgpu xf86-video-ati xf86-video-noveau --noconfirm
      break
      ;;
    *)
      echo "❌ Opción incorrecta. Intente nuevamente."
      sleep 5
      continue
      ;;
  esac
done

#apps
    yay -S --needed lxqt lightdm lightdm-gtk-greeter flatpak htop fastfetch konsole vlc vlc-plugin-ffmpeg spotify-launcher libreoffice-fresh libreoffice-fresh-es kate okular onlyoffice-bin firefox brave-bin webapp-manager-git bluez bluez-utils blueman pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber pavucontrol qpwgraph wpa_supplicant networkmanager networkmanager --noconfirm
    #limpieza
        yay -Syyuu --noconfirm
        yay -Scc --noconfirm
#servicios
    #internet
        sudo systemctl enable NetworkManager
        sudo systemctl start NetworkManager
        sudo systemctl restart NetworkManager
        sudo systemctl start bluetooth.service
        sudo systemctl enable bluetooth.service
        sudo systemctl restart bluetooth.service
        sudo systemctl enable --now pipewire
        sudo systemctl enable --now wireplumber
        sudo systemctl --global disable pulseaudio.service pulseaudio.socket
        systemctl --user restart pipewire
        systemctl --user restart wireplumber
        sudo systemctl enable --now pipewire
        sudo systemctl enable --now wireplumber
        sudo systemctl enable --now bluetooth.service
        systemctl --user restart pipewire
        systemctl --user restart wireplumber
        sudo systemctl restart bluetooth.service
        sudo systemctl enable lightdm
#ttf
    cd
    cd Arch-PiOf
    git clone https://github.com/FerNandoGD24/ttf.git
    cd ttf
    bash ttf.sh
#limpieza
    yay -Syyu --noconfirm
    yay -Scc --noconfirm
    cd
    sudo rm -dfr Arch-PiOf
#kernel
    yay -S linux-ltsc --noconfirm
    yay -R linux --noconfirm
    sudo grub-mkconfig -o /boot/grub/grub.cfg
#pre-fin
    yay -Syyuu --noconfirm
    yay -Syyu --noconfirm
    yay -Syu --noconfirm
    yay -Syy --noconfirm
    yay -Suu --noconfirm
    yay -Syu --noconfirm
    yay -Sy --noconfirm
    yay -Su --noconfirm
    yay -Scc --noconfirm
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
