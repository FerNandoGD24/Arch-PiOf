<h1 align="center">  SCRIPT POST INSTALACION OFIMATICA ARCH LINUX</h1>

## informacion
este script instalara un escritorio ligero y las herramientas necesarias para ofimatica y uso normal

## informacion adicional
el script depende de mis repositorios de github:
- [Arch-PiOf](<https://github.com/FerNandoGD24/Arch-PiOf>)
- [yay-fork](<https://github.com/FerNandoGD24/yay-fork>)
- [ttf](<https://github.com/FerNandoGD24/ttf>)
- [APYAA](<https://github.com/FerNandoGD24/APYAA>)

Este script fue probado en una maquina virtual con 64 gb de espacio, 1 nucleo y 1gb de ram

Esto fue instalado con archinstall:
- idioma del equipo
- repositorios
- particionamiento de disco
- contraseña root
- usuario
- internet

## dependencias

```
sudo pacman -Syu git --noconfirm
```

## Descarga
```
git clone https://github.com/FerNandoGD24/Arch-PiOf.git
```

## entrar al script
```
cd Arch-PiOf
```

## iniciar al script
```
bash install.sh
```
## durante la ejecucion del script
* inicio
  - te pedira la contraseña para instalar yay, luego de eso no te pedira mas la contraseña
* final
  - el equipo se apagara automaticamente, cuando lo enciendas tendra todo instalado
