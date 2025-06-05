@echo off
setlocal ENABLEDELAYEDEXPANSION

:: --- CONFIGURACIÓN ---
:: Agrega o quita las extensiones de audio que quieras procesar. No olvides el punto.
set "AUDIO_EXTENSIONS=.mp3 .wav .m4a .flac .ogg .opus .webm"
:: --- FIN DE LA CONFIGURACIÓN ---

echo ==== TRANSCRIPCION MASIVA CON WHISPER ====
echo.

set "folderpath=%~1"

:: Si no se arrastró una carpeta, pide la ruta manualmente
if "%folderpath%"=="" (
    set /p "folderpath=Arrastrá una carpeta aquí y presioná Enter, o pegá la ruta: "
)

:: Quita las comillas que Windows agrega al arrastrar y soltar
set "folderpath=%folderpath:"=%"

if not exist "%folderpath%" (
    echo.
    echo ❌ La carpeta "%folderpath%" no existe o la ruta es inválida.
    pause
    exit /b
)

echo.
echo ⏳ Iniciando el proceso en la carpeta: %folderpath%
echo ----------------------------------------------------

:: Recorre todos los archivos dentro de la carpeta especificada
for %%F in ("%folderpath%\*") do (
    set "file_extension=%%~xF"
    set "is_audio=false"

    :: Revisa si la extensión del archivo está en nuestra lista de extensiones de audio
    for %%E in (%AUDIO_EXTENSIONS%) do (
        if /I "!file_extension!"=="%%E" (
            set "is_audio=true"
        )
    )

    if "!is_audio!"=="true" (
        echo.
        echo ➡️  Procesando archivo: "%%~nxF"
        whisper "%%~fF" --language Spanish --model base --output_format txt
    )
)

echo.
echo ----------------------------------------------------
echo ✅ Proceso completado. Todos los archivos de audio fueron transcriptos.
echo Los archivos .txt fueron generados en la misma carpeta.
echo.
pause