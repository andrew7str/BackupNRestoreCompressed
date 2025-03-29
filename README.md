# 🔐 Backup & Restore Password & Settings  

**Backup dan restore pengaturan (termasuk password yang tersimpan) dari berbagai software kompresi dan disk image manager**.  

## 🚀 **Berfungsi pada:**  
- ✅ WinRAR  
- ✅ 7-Zip  
- ✅ WinZip  
- ✅ UltraISO  
- ✅ PowerISO  

---

## 📌 **Fitur:**  
✅ **Backup otomatis** semua pengaturan & password yang tersimpan di software yang didukung  
✅ **Restore otomatis** pengaturan & password jika terjadi perubahan atau instal ulang  
✅ **Mudah digunakan**, hanya dengan memilih menu 1 atau 2  
✅ **Kompatibel dengan Windows** (Jalankan sebagai Administrator)  

---

## 🎯 **Cara Penggunaan**  
1️⃣ **Ekstrak file** ke dalam folder yang mudah diakses  
2️⃣ **Pastikan file sudah diekstrak** sebelum digunakan  
3️⃣ **Jalankan file `Backup_Restore_Password.bat` sebagai Administrator**  
4️⃣ **Pilih opsi yang diinginkan:**  
   - **[1] Backup** → Untuk mencadangkan password & pengaturan  
   - **[2] Restore** → Untuk mengembalikan password & pengaturan  
   - **[3] Keluar** → Menutup program  

---

## 📂 **Hasil Backup**  
Semua file backup akan disimpan di dalam folder **`Backup_Password/`** yang ada di lokasi yang sama dengan script.  

File yang dibackup:  

### 🔹 **WinRAR**  
- `WinRAR_Reg_Backup.reg` → Backup registry WinRAR  
- `winrar.ini` → Backup file konfigurasi WinRAR  

### 🔹 **7-Zip**  
- `7Zip_Reg_Backup.reg` → Backup registry 7-Zip  
- `7zFM.ini` → Backup file konfigurasi 7-Zip  

### 🔹 **WinZip**  
- `WinZip_Reg_Backup.reg` → Backup registry WinZip  

### 🔹 **PowerISO**  
- `PowerISO_Reg_Backup.reg` → Backup registry PowerISO  
- `PowerISO.ini` → Backup file konfigurasi PowerISO  

### 🔹 **UltraISO**  
- `UltraISO_Reg_Backup.reg` → Backup registry UltraISO  
- `UltraISO.ini` → Backup file konfigurasi UltraISO  

---

## ⚠ **Catatan Penting**  
- Script ini **tidak langsung menampilkan password**, tetapi hanya mencadangkan dan mengembalikannya jika tersimpan di registry atau file konfigurasi.  
- **Pastikan software yang ingin di-restore sudah terinstal di komputer!**  
- Jika ingin melihat apakah password tersimpan dalam **file `.ini` atau `.reg`**, buka file backup dengan **Notepad**.  

---

## 🛠 **Troubleshooting**  
❓ **Mengapa tidak bisa restore password?**  
✔ Pastikan backup sudah tersedia di folder **`Backup_Password/`**  
✔ Jalankan script dengan **Run as Administrator**  

❓ **Apakah bisa backup hanya satu software saja?**  
✔ Saat ini, backup dilakukan sekaligus untuk semua software yang didukung  

---

## 📜 **Lisensi**  
💡 Script ini dibuat untuk membantu pengguna dalam mencadangkan pengaturan software kompresi dan disk image manager.  
Anda bebas menggunakan dan memodifikasi script ini.  

---

## 🎯 **Kontribusi**  
Jika Anda ingin menambahkan fitur atau memperbaiki bug, silakan buat **pull request** atau laporkan masalah di **Issues**.  

📩 **Author:** 

```
███╗   ███╗██████╗    ███████╗██╗  ██╗███████╗
████╗ ████║██╔══██╗   ██╔════╝╚██╗██╔╝██╔════╝
██╔████╔██║██████╔╝   █████╗   ╚███╔╝ █████╗  
██║╚██╔╝██║██╔══██╗   ██╔══╝   ██╔██╗ ██╔══╝  
██║ ╚═╝ ██║██║  ██║██╗███████╗██╔╝ ██╗███████╗
╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝
```

