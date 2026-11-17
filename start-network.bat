@echo off
echo ========================================================
echo   Memulai Server DeBouquets di Jaringan Lokal (Wi-Fi)
echo ========================================================
echo.
echo Alamat IP Lokal Anda : 192.168.1.129
echo Akses dari HP/Device Lain : http://192.168.1.129:8000
echo.
echo Server sedang dinyalakan dalam 3 jendela baru...
echo Jangan tutup 3 jendela hitam yang baru terbuka!
echo.

:: 1. Jalankan Laravel Backend
start "Laravel Backend" cmd /k "title Laravel Backend & php artisan serve --host=0.0.0.0 --port=8000"

:: 2. Jalankan Vite (Frontend Compiler)
start "Vite Frontend" cmd /k "title Vite Frontend & npm run dev -- --host 0.0.0.0"

:: 3. Jalankan Laravel Reverb (WebSocket)
start "Laravel Reverb" cmd /k "title Laravel Reverb (WebSocket) & php artisan reverb:start --host=0.0.0.0 --port=8080"

echo Selesai! Anda bisa meminimalkan (minimize) jendela ini.
pause
