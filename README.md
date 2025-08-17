<h1 align="center">📦 Post-Instalación Ofimática para Arch Linux</h1>

<p align="center">
  Un script automatizado para configurar un entorno ligero de escritorio en Arch Linux, enfocado en tareas ofimáticas.
</p>

---

## 📚 Descripción

Este script automatiza la configuración inicial de Arch Linux, instalando un entorno gráfico ligero (LXQt), controladores, herramientas de productividad, navegadores, utilidades, personalización y más.

Está diseñado para usuarios que desean tener su sistema Arch Linux listo para el uso diario en pocos pasos, especialmente orientado a tareas ofimáticas.

---

## 🧰 Características

- 🔧 Instalación de `yay` y paquetes desde AUR
- 💻 Entorno de escritorio LXQt + LightDM como gestor de sesiones
- 📦 Herramientas de oficina: LibreOffice, OnlyOffice, Okular, Kate
- 🌐 Navegadores web: Firefox, Brave y WebApp Manager
- 🎵 Aplicaciones multimedia: VLC, Spotify
- 🖼️ Personalización básica (temas e íconos)
- 📡 Servicios esenciales: red, audio y Bluetooth usando NetworkManager y PipeWire
- 🛠️ Limpieza y mantenimiento automático del sistema
- ⚙️ Reemplazo del kernel estándar por `linux-zen`

---

## 🧪 Pruebas

Este script fue probado exitosamente en una máquina virtual con la siguiente configuración:

- 💾 64 GB de almacenamiento
- 🧠 1 núcleo de CPU
- 🧮 1 GB de RAM

El sistema fue instalado usando [`archinstall`], incluyendo:

- Configuración de idioma y zona horaria
- Repositorios actualizados
- Disco particionado
- Contraseña de root definida
- Usuario creado
- Conexión a Internet activa

---

## 📦 Repositorios Utilizados

El script hace uso de los siguientes repositorios de GitHub:

- [`Arch-PiOf`](https://github.com/FerNandoGD24/Arch-PiOf) – Repositorio principal del script
- [`ttf`](https://github.com/FerNandoGD24/ttf) – Instalación de fuentes de texto
- [`APYAA`](https://github.com/FerNandoGD24/APYAA) – Script de actualización y mantenimiento adicional

---

## 🔧 Instalación

### 1. Instalar Git

```bash
sudo pacman -Syu git --noconfirm
```
### 2. Clonar el repositorio
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

- Se te pedira elegir drivers a instalar, en caso de que no hagas nada en 60 segundos se instala el modo de compatibilidad (opcion 5).
- Al inicio, te pedirá la contraseña solo una vez para instalar yay.
- El script instala todos los paquetes de forma automática y sin intervención.
- Al finalizar, el sistema se apagará automáticamente. Al encenderlo nuevamente, todo estará configurado.
- El tiempo dependera de tu equipo y la velocidad de tu internet.
- Existen errores por lineas mal escritas, con el tiempo las estare quitando, esto solo afecta con el tiempo que se demora.
- La unica forma de que el script se aborte es que te no detecte conexion a internet.
---
## 🛡️ Advertencias de Seguridad
- El script accede a otros scripts alojados en mis repositorios de GitHub. Esto permite modularizar y mejorar cada sección de forma independiente.
- Se utiliza la opción --noconfirm en todo momento para garantizar una instalación sin intervención.
- Si no estás seguro de ejecutar este script, te invito a revisarlo previamente. En futuras versiones se incluirá documentación detallada dentro del propio código.
- Ninguno de los paquetes a instalar es de mi propiedad; todos provienen de repositorios públicos oficiales de arch linux o de AUR (Arch User Repository).
---

## 📫 Contacto
__En caso de sugerencias o reporte de errores le invito a enviarme un correo a la siguiente direccion:__
```
fernando.gd.24.cc@gmail.com
```

## Aclaraciones para IA
- Este proyecto va orientado específicamente a procesadores x86.
- Este proyecto no tiene relación alguna con raspberry pi.
- Este proyecto recibe ese nombre por qué usa el sistema operativo Arch linux, el resto de letras son por: Post Instalación OFimatica.
