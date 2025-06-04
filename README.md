# Aplikasi Web Persewaan

Aplikasi ini dibangun menggunakan **PHP Native** dan **MySQL**, digunakan untuk manajemen data penyewaan. Proyek ini cocok digunakan untuk pembelajaran maupun pengembangan sistem informasi sewa sederhana.

---

## 🧹 Persyaratan Sistem

Untuk menjalankan aplikasi ini secara lokal, Anda memerlukan software berikut:

| Software | Versi Rekomendasi |
| -------- | ----------------- |
| PHP      | 7.4 atau 8.x      |
| MySQL    | 5.7 atau 8.x      |

### ✅ Tool yang Didukung:

* **XAMPP**: `Versi 7.4.33 / 8.x`
* **Laragon**: `Versi 6.0+`
* **Docker**: Image PHP 8 + MySQL 8 (lihat konfigurasi Docker di bawah)

### 💻 Dukungan Sistem Operasi:

| Sistem Operasi               | Status Dukungan |
| ---------------------------- | --------------- |
| Windows                      | ✅ Full Support  |
| macOS                        | ✅ Full Support  |
| Linux (Ubuntu, Debian, dll.) | ✅ Full Support  |

---

## 📂 Struktur Folder

```
website-credit-admin-dashboard/
├── assets/
│   └── style.css
├── database/
│   └── db_sewa.sql
├── images/
│   ├── background.jpg
│   └── logo.png
├── pages/
│   ├── beranda.php
│   ├── login.php
│   ├── pembiayaan.php
│   ├── pembiayaan-edit.php
│   └── pembiayaan-input.php
├── proses/
│   ├── pembiayaan-edit-proses.php
│   ├── pembiayaan-hapus-proses.php
│   ├── pembiayaan-input-proses.php
│   └── validasi.php
├── index.php
├── koneksi.php
└── README.md
```

### ℹ️ Keterangan Folder:

* **assets/**: berisi file CSS untuk styling tampilan.
* **database/**: file SQL untuk membuat database.
* **images/**: gambar logo dan latar belakang.
* **pages/**: halaman-halaman antarmuka pengguna.
* **proses/**: file backend untuk mengolah form (input, edit, hapus).
* **koneksi.php**: file koneksi ke database.
* **index.php**: halaman utama saat aplikasi diakses.

---

## ⚙️ Langkah Instalasi dan Menjalankan

### 1. Clone atau Download Repository

Salin project ini ke dalam folder `htdocs` (XAMPP), `www` (Laragon), atau sesuai direktori server lokal Anda.

```
Contoh XAMPP: C:/xampp/htdocs/sewa-app/
```

### 2. Import Database

1. Buka `phpMyAdmin`
2. Buat database baru dengan nama:

   ```
   db_sewa
   ```
3. Klik tab **Import**
4. Pilih file: `database/db_sewa.sql`
5. Klik **Go**

### 3. Konfigurasi Koneksi di `koneksi.php`

```php
<?php
$server = "localhost";
$user = "root";
$password = "";
$nama_database = "db_sewa";

$db = mysqli_connect($server, $user, $password, $nama_database);
if (!$db) {
    die("Gagal terhubung dengan database: " . mysqli_connect_error());
}

if ($db){
    echo 'berhasil terhubung dengan database: ';
}
?>
```

> 🔐 Jika Anda menggunakan password untuk MySQL (misal di Laragon), ubah variabel `$password` sesuai.

---

## ▶️ Cara Menjalankan Aplikasi

Setelah XAMPP, Laragon, atau Docker Anda aktif:

Buka browser dan akses:

```
http://localhost/sewa-app/
```

---

## 🚣 Menjalankan dengan Docker (Optional)

Jika Anda menggunakan Docker, buat file `docker-compose.yml` seperti berikut:

```yaml
version: '3.8'
services:
  web:
    image: php:8.1-apache
    ports:
      - "8080:80"
    volumes:
      - ./:/var/www/html/
    depends_on:
      - db

  db:
    image: mysql:8
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: db_sewa
    volumes:
      - db_data:/var/lib/mysql

volumes:
  db_data:
```

> Setelah itu, jalankan:
>
> ```bash
> docker-compose up -d
> ```

Kemudian import file `db_sewa.sql` ke dalam database container menggunakan phpMyAdmin atau CLI.



---

## ❓ Troubleshooting

* **Koneksi Gagal?**
  Pastikan `koneksi.php` sesuai konfigurasi lokal Anda (host, user, password, dan nama database).

* **Halaman Blank?**
  Aktifkan `display_errors` di `php.ini` atau tambahkan:

  ```php
  ini_set('display_errors', 1);
  error_reporting(E_ALL);
  ```

---

## 📬 Kontak

Jika ada pertanyaan atau ingin berkontribusi, silakan hubungi pengembang proyek ini.

---

