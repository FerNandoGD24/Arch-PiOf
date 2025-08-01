<h1 align="center">  SCRIPT POST INSTALACION OFIMATICA ARCH LINUX</h1>
Este script basicamente instala un escritorio ligero, un gestor de sesiones y todas las heramientas necesaria(y algunas extras) para uso de ofimatica.

## Importante
- 2GB de ram son suficientes para usar las herramientas y navegar en internet pero no para ver contenido en youtube/spotify
- 4GB de ram son suficientes para ver contenido en youtube/spotify
- Las pruebas se hicieron en una maquina virtual con 2 nucleos


## Tutorial en youtube


- [Aqui el video, perdon la mala edicion, estoy aprendiendo a usar el programa de edicion](https://www.youtube.com/watch?v=3U-o9JziJm0)
- si quieres apoyar este proyecto o apoyarme te agradeceria que te suscribieras a mi canal de youtube

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
## Pasos para instalar arch (instalacion basica y facil)
_{este no es un tutorial para instalar arch, esta seccion esta hecha a memoria, de todos modos dejare un tutorial en youtube de este mismo script}_

- Visitar la pagina de [arch linux](<https://archlinux.org/download/>) y descargar la iso
- Grabar la iso en una usb (puedes usar ventoy para grabar ventoy en la usb y solo arrastrar el iso de arch dentro de la usb)
- Apagar el pc en el que se va a instalar (procurar haver una copia de seguridad de todos los archivos importantes, como documentos, imagenes, etc, esto debido a que se eliminara todo el disco)
- Entrar en la bios del pc, esto con "F2", "SUPR"/"DEL" o "ESC" si no te funciona ninguna de estas teclas busca un tutorial con el modelo de tu pc o de la placa madre(motherboard)
  Lluego ve a la pestaña de seguridad y desactiva el inicio seguro
- Luego dirijete a los dispositivos de inicio y pon el usb como primera prioridad
- Luego guarda los cambios
- Prende el pc(en caso de que lo estes instalando con ventoy tendras que seleccionar la iso de arch y ejecutarlo en modo normal)
- Seleccionas la primera opcion(en caso de que no te inicie rapido tu dejalo, una vez estuve como 3 horas esperando a que inicie, esto se debe a que mi placa madre es china y no tiene ciertas firmas, en su caso ya depende de ustedes averiguar por que se les demora en iniciar, pero eso no importa mucho ya que solo afecta a la instalacion)
- Una vez ya estas en la instalacion pon el siguiente comando
```
archinstall
```
- En caso de que salga algo que indique que existe una actualizacion poner el siguiente comando
```
sudo pacman -Sy archinstall
```
- luego cambiar el idioma del instalador a nuestro idioma
- En la seccion de espejos y repositorios activar el repositorio multilib y en la parte de espejos poner tu pais, en caso de que no este disponible pon el pais mas cercano que encuentres
- En la parte de las pasrticiones del disco seleccionar tu disco, poner el formato brtfs, activar la compresion y poner las rutas de btrfs, no recuerdo ahora mismo el nombre de la opcion pero simplemente lee las opciones
- Luego en la parte de contraseña de root(o algo asi dice la opcion, repito, estoy haciendo esto a memoria) configurar una contraseñas, recomiendo solo usar numeros
- Luego deberemos crear un usuario, poner tu nombre(o el que quiera) y poner la misma contraseña que en root
- En perfil debemos poner la opcion de xorg
- Luego en la parte de controladores graficos dentro de la misma categoria poner la que te corresponde, en caso de que no sepas pon la opcion de "all"
- En la seccion de audio debemos poner pipeware
- En la seccion de internet poner la opcion de mas abajo
- Luego ponemos install y esperamos
- Una vez terminada la instalacion seleccionar la opcion de "exit archinstall" y poner el siguiente comando
```
sudo shutwdown -h now
```

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
