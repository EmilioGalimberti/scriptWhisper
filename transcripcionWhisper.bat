@echo off
setlocal

echo ==== TRANSCRIPCION CON WHISPER ====
set /p audiofile=Escribí el nombre del archivo de audio (incluyendo la extensión): 

echo Procesando %audiofile%...

whisper "%audiofile%" --language Spanish --model base

echo.
echo ✅ Transcripción completa. El archivo .txt fue generado en la misma carpeta.
pause
