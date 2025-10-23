# Netherra-AdBlock

**Netherra-AdBlock** adalah modul **systemless** untuk perangkat Android yang telah di-root. Modul ini dirancang untuk memblokir iklan secara efisien dengan memanfaatkan daftar host dari [AdAway](https://github.com/AdAway/AdAway), tanpa melakukan modifikasi permanen pada partisi sistem. Dengan pendekatan **systemless**, Netherra-AdBlock memastikan keamanan perangkat, kemudahan pemasangan dan penghapusan, serta kompatibilitas yang tinggi dengan berbagai versi Android.

## 📌 Latar Belakang

Iklan yang muncul secara agresif pada perangkat Android dapat menurunkan performa, mengganggu pengalaman pengguna, dan meningkatkan konsumsi data. Meskipun terdapat berbagai aplikasi adblock, banyak di antaranya melakukan modifikasi langsung pada sistem atau membutuhkan proses latar belakang yang terus-menerus, yang berpotensi membebani CPU dan RAM serta meningkatkan risiko bootloop.  

Netherra-AdBlock hadir sebagai solusi **systemless**, yang memanfaatkan **daftar host terpercaya dari AdAway** untuk memblokir domain iklan, tanpa memodifikasi sistem secara permanen.

## 🔧 Fitur Utama

1. **Systemless dan Aman**
   - Tidak mengubah partisi sistem.
   - Memungkinkan modul diaktifkan atau dinonaktifkan kapan saja tanpa risiko kerusakan sistem.

2. **Pemblokiran Iklan Berbasis Host**
   - Memanfaatkan daftar host resmi dari [AdAway](https://github.com/AdAway/AdAway) untuk memblokir domain iklan pada tingkat DNS.

3. **Ringan dan Efisien**
   - Tidak ada proses latar belakang yang berjalan.
   - Meminimalisir penggunaan RAM dan CPU dibanding adblock berbasis aplikasi.

4. **Kompatibilitas Tinggi**
   - Mendukung perangkat Android yang di-root dengan Magisk atau KernelSU.
   - Bekerja pada berbagai versi Android tanpa memerlukan konfigurasi tambahan.

5. **Mudah Dihapus**
   - Dapat dihapus dengan mudah melalui Magisk/KSU Manager tanpa meninggalkan residu.

## ✅ Kelebihan Netherra-AdBlock Dibandingkan Adblock Lain

| Fitur | Netherra-AdBlock | Adblock / AdAway Lain |
|-------|-----------------|----------------------|
| **Tidak memodifikasi partisi sistem** | ✅ Systemless | ❌ Banyak adblock lain memerlukan modifikasi partisi sistem |
| **Mudah dihapus** | ✅ Nonaktifkan atau hapus modul di Magisk/KSU | ❌ Beberapa adblock memerlukan uninstall manual yang kompleks |
| **Ringan** | ✅ Tanpa proses latar belakang tambahan | ❌ Beberapa adblock lain berjalan terus-menerus, memakan RAM/CPU |
| **Daftar host terpercaya** | ✅ Berdasarkan AdAway resmi | ❌ Tidak semua adblock menggunakan sumber terpercaya |
| **Instalasi sederhana** | ✅ Pasang modul `.zip` via Magisk/KSU | ❌ Beberapa adblock memerlukan konfigurasi manual atau aplikasi tambahan |
| **Aman untuk root** | ✅ Mengurangi risiko bootloop atau modifikasi sistem permanen | ❌ Modifikasi langsung meningkatkan risiko kerusakan sistem |

## 📥 Instalasi

### 1. Unduh Modul

- Unduh file `.zip` dari [Netherra-AdBlock Releases](https://github.com/AX271/Netherra-AdBlock/releases) atau clone repositori untuk membangun sendiri.

### 2. Pasang Modul via Magisk atau KSU

1. Buka **Magisk Manager** atau **KSU Manager**.
2. Masuk ke tab **Modules**.
3. Ketuk tombol **Install from storage** dan pilih file `.zip` modul.
4. Reboot perangkat untuk menerapkan modul.

### 3. Verifikasi

- Setelah reboot, buka aplikasi atau situs yang sebelumnya menampilkan iklan untuk memastikan pemblokiran bekerja.
- Gunakan perintah `ping` atau `nslookup` untuk memeriksa resolusi DNS domain yang diblokir.

## 🛠️ Cara Kerja Teknis

1. **Penyalinan Daftar Host**
   - Modul menyalin daftar host AdAway ke lokasi **systemless** (`/data/adb/modules/Netherra-AdBlock/system/etc/hosts` atau setara).
   
2. **Resolusi DNS**
   - Setiap permintaan DNS untuk domain yang terdapat dalam host list akan diarahkan ke `127.0.0.1`, sehingga iklan gagal dimuat.

3. **Systemless Execution**
   - Karena modul berjalan systemless, perubahan host dapat dibatalkan kapan saja dengan menonaktifkan atau menghapus modul tanpa memengaruhi partisi sistem.

## 🧹 Penghapusan Modul

1. Buka **Magisk/KSU Manager** → **Modules**.
2. Pilih **Netherra-AdBlock**.
3. Ketuk **hapus/uninstall**.
4. Reboot perangkat.

**Catatan:** Tidak ada residu tersisa di sistem karena modul bersifat systemless.

## 🛡️ Kegunaan dan Pengaplikasian

- Menghilangkan iklan di aplikasi dan browser Android.
- Meningkatkan performa perangkat dengan mengurangi konsumsi RAM dan CPU.
- Menghemat kuota data dengan memblokir unduhan iklan otomatis.
- Cocok digunakan pada perangkat root dengan Magisk/KSU tanpa risiko modifikasi sistem permanen.

## ⚠️ Catatan Penting

- Pastikan perangkat sudah di-root menggunakan Magisk atau KSU.
- Backup data penting sebelum memasang modul.
- Modul ini **tidak kompatibel** dengan perangkat non-root.
- Penggunaan systemless menjamin keamanan sistem, tetapi tetap disarankan berhati-hati ketika mengubah file host atau modul lain yang memengaruhi sistem.

## 🔗 Sumber Daftar Host

- Daftar host yang digunakan diambil dari **AdAway Official Repository**: [AdAway](https://github.com/AdAway/AdAway)

## 📄 Lisensi

- Modul ini dilisensikan di bawah **[MIT License](LICENSE)**.  
- Penggunaan daftar host AdAway tetap mengacu pada lisensi dan ketentuan yang berlaku di repository resmi AdAway.
