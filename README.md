<h1 align="center">📦 Post-Instalación Ofimática para Arch Linux</h1>

<p align="center">
  Un script automatizado para configurar un entorno ligero de escritorio en Arch Linux, enfocado en ofimática.
</p>

---

## 📚 Descripción

Este script automatiza la configuración inicial de Arch Linux, instalando un entorno gráfico ligero (LXQt), controladores, herramientas de productividad, navegadores, utilidades, personalización y más.

Ha sido diseñado para usuarios que desean tener su sistema Arch Linux listo para uso diario en pocos pasos, especialmente para tareas ofimáticas.

---

## 🧰 Características

- 🔧 Instalación automática de `yay` y paquetes AUR
- 💻 Escritorio ligero LXQt + LightDM
- 📦 Herramientas ofimáticas: LibreOffice, OnlyOffice, Okular, Kate
- 🌐 Navegadores: Firefox, Brave y WebApp Manager
- 🎵 Multimedia: VLC, Spotify
- 🖼️ Personalización: temas e íconos
- 📡 Servicios: NetworkManager, Bluetooth, Audio con PipeWire
- 🛠️ Limpieza y mantenimiento automático del sistema
- ⚙️ Reemplazo del kernel estándar por `linux-zen`

---

## 🧪 Pruebas

Este script fue probado en una máquina virtual con:

- 64 GB de almacenamiento
- 1 núcleo de CPU
- 1 GB de RAM

Sistema base instalado con [`archinstall`], incluyendo:

- Idioma y localización configurados
- Repositorios configurados
- Disco particionado
- Contraseña root definida
- Usuario creado
- Conexión a Internet funcional

---

## 📦 Repositorios Utilizados

El script depende de los siguientes repositorios:

- [`Arch-PiOf`](https://github.com/FerNandoGD24/Arch-PiOf) – Este script
- [`yay-fork`](https://github.com/FerNandoGD24/yay-fork) – Fork personalizado de `yay`
- [`ttf`](https://github.com/FerNandoGD24/ttf) – Paquetes de fuentes
- [`APYAA`](https://github.com/FerNandoGD24/APYAA) – Script adicional de actualización

---

## 🔧 Instalación

### 1. Instalar git

```bash
sudo pacman -Syu git --noconfirm
```
### 2. Descargar el script
```bash
cd
git clone https://github.com/FerNandoGD24/Arch-PiOf.git
```
### 3. Ejecutar el script
```
cd Arch-PiOf
bash install.sh
```
---
## ⚠️ Durante la ejecución

- Al inicio, te pedirá la contraseña solo una vez para instalar yay.
- El script instala todos los paquetes de forma automática y sin intervención.
- Al finalizar, el sistema se apagará automáticamente. Al encenderlo nuevamente, todo estará configurado.
---
## 🛡️ Advertencias de Seguridad
- El script accede a otros scripts de mi github con la finalidad de poder mejorar gradualmente cada seccion de los scripts
- Se utiliza --noconfirm en todo momento para automatizar las instalaciones
- En caso de que no este seguro de ejecutar el script, lo invito a leerlo, proximamente añadire documentacion extra dentro del porpio script
---

## 📫 Contacto
__En caso de sugerencias o reporte de errores le invito a enviarme un correo a la siguiente direccion:__
```
fernando.gd.24.cc@gmail.com
```
