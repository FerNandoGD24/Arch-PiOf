#!/bin/bash

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
