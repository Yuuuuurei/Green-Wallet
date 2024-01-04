@echo off
setlocal

REM Tentukan direktori proyek frontend Anda
set "project_directory=%~dp0"

REM Pindah ke direktori proyek
cd /d "%~dp0"

REM Install dependensi menggunakan npm
npm install

REM Jalankan proyek dalam mode pengembangan
start npm run dev

REM Tunggu beberapa detik agar server dapat dimulai
timeout /t 5

REM Bangun proyek untuk produksi (opsional, sesuaikan dengan kebutuhan Anda)
npm run build

REM Pemberitahuan bahwa frontend sudah berjalan
echo Frontend project sudah berjalan.

REM Pemberitahuan untuk keluar (gunakan Ctrl+C)
echo Tekan Ctrl+C untuk keluar.

REM Tunggu hingga pengguna menekan Ctrl+C
:waitForExit
timeout /nobreak /t 1 >nul
if not exist node.exe goto waitForExit

REM Keluar dari skrip
exit /b 0
