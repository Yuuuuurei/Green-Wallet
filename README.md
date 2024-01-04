# Panduan Instalasi

## Persyaratan (Requirements)

Pastikan Anda memiliki perangkat lunak berikut sebelum menginstal aplikasi:

- [Node.js](https://nodejs.org/dist/v21.5.0/node-v21.5.0-x64.msi)
- [Backend](https://codeload.github.com/Yuuuuurei/Green-Wallet-Frontend/zip/refs/heads/main)

Silakan unduh dan instal versi terbaru dari Node.js melalui tautan di atas.

## Langkah Instalasi

1. Pastikan bahwa backend sudah berjalan.
2. Pastikan juga bahwa folder backend dan frontend berada di direktori yang sama.
3. Jalankan file `.bat` untuk menjalankan aplikasi.

Pastikan untuk mengikuti langkah-langkah di atas dengan teliti agar aplikasi dapat diinstal dengan sukses.

## Alternatif Menjalankan Frontend

Jika mengalami masalah dengan file `.bat` atau ingin menjalankan frontend secara manual, ikuti langkah-langkah alternatif ini:

1. Buka command prompt (cmd) pada direktori frontend.
2. Ketik perintah berikut secara berurutan:
   ```bash
   npm install
   npm run dev
   npm run build
