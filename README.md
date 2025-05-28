# scriptWhisper


# 1ero debe tener instalado whisper:
https://github.com/openai/whisper
guia de instalacion rapida:

✅ Cómo instalar y usar Whisper en tu PC (Windows o Linux)
🛠️ Paso 1: Instalar Python (si no lo tenés)
Descargalo desde: https://www.python.org/downloads/

Durante la instalación: marcá la opción que dice "Add Python to PATH"

🛠️ Paso 2: Abrí una terminal o consola (CMD o PowerShell en Windows)
🐍 Paso 3: Instalá Whisper
pip install git+https://github.com/openai/whisper.git 

paso 4: si no tenés instalado ffmpeg (necesario para manejar audios), corré esto también:
pip install ffmpeg-python

##Si tuviste algun problema con ffmpeg instalarlo de la siguiente manera:
✅ SOLUCIÓN PASO A PASO
1. Instalá ffmpeg manualmente
Andá a: https://ffmpeg.org/download.html

Entrá a la parte de Windows → te lleva a https://www.gyan.dev/ffmpeg/builds/

Bajá el archivo "Release full"

Extraé el ZIP (va a salir una carpeta que contiene bin/ffmpeg.exe)

2. Agregá ffmpeg al PATH
Copiá la ruta a la carpeta bin (ejemplo: C:\ffmpeg\bin)

Abrí el menú Inicio → buscá "Editar las variables de entorno del sistema"

En la ventana que se abre, hacé clic en "Variables de entorno"

Buscá la variable Path en la sección "Variables del sistema"

Hacé clic en Editar → luego en Nuevo → pegá la ruta a bin

Aceptá todo y reiniciá tu consola

3. Verificá que funcione
Abrí una nueva terminal y escribí:
ffmpeg -version
Si ves información sobre la versión, ¡listo! Whisper ya debería funcionar sin el error.



# Esta puesto con el modelo base porque solo puedo usar mi cpu
si podes usar la gpu podes cambiar modelo aca una recomendacion sobre los modelos:

| Modelo   | Precisión        | Recurso CPU | Tiempo estimado       |
| -------- | ---------------- | ----------- | --------------------- |
| `tiny`   | Baja             | Mínimo      | \~5–10 min (1h audio) |
| `base`   | Buena (sencilla) | Bajo        | \~10–15 min           |
| `small`  | Muy buena        | Medio       | \~20–30 min           |
| `medium` | Excelente        | Alto        | \~45 min – 1h         |
| `large`  | Muy alta (ideal) | Muy alto    | 1h o más              |

