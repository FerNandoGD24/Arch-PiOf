<h1 align="center">  SCRIPT POST INSTALACION OFIMATICA ARCH LINUX</h1>
Este script basicamente instala un escritorio ligero, un gestor de sesiones y todas las heramientas necesaria(y algunas extras) para uso de ofimatica.

## Paquetes a instalar

- Yay (Instalador de paquetes)
- Htop y fastfetch (Para monitorear y mostrar informaicon del sistema
- Xfce4 (Rscritorio)
- Lightdm (Gestor de sesiones)
- Libreoffice (ofimatica)
- Okular (visor de pdf)
- Kate (Editor de texto)
- Vlc (Visor de archvios mp3, mov, mkv, etc)
- Librewolf (Firefox optimizado y con extensiones que quitan anuncios)
- Pamac (Gestor de paquetes grafico{no es tan ligero})
- Konsole (Una consola mas personalizable)
- Discover (Un gestor de paquetes grafico mas ligero pero mas limitado)
- Ark (Es basicamente winrar pero para linux)
- Webapp-Manager (Un gestor de aplicaciones web)
- Spotify-launcher (Spotify)
- Ttfs-ms-win11-auto (Todas las fuentes de windows 11)
- Linux-zen (Un kernel mas optimizado para equipos de bajos recursos)

## Instalacion del script
- Primero debemos iniciar sesion
- En la parte de login: el nombre que configuraste en la instalacion
- En la parte de contraseña/password: la contraseña que configuraste
- Debemos instalar "git" con el siguiente comando nos pedira la contraseña
```
sudo pacman -Syu git --noconfirm
```
- Luego ponemos los siguientes comandos
```
cd /
```
```
mkdir script
```
```
cd script
```
```
git clone https://github.com/FerNandoXr24/Arch-PIO.git
```
```
cd Arch-PIO
```
```
bash install.sh
```
- Luego tendras que poner tu contraseña cuando te la pida, al inicio de te la pedira unas 3 veces y al final una vez
- Tu pc se va a reiniciar despues de la instalacion y estara todo listo
- Luego tu tendras que encargarte de la personalizacion (en el futuro hare un tutorial)
