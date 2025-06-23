# QuizMI - Aplikasi Kuis Manajemen Informatika

Sebuah aplikasi kuis sederhana yang dibangun menggunakan Flutter, ditujukan untuk mahasiswa baru (maba) program studi D4 Manajemen Informatika. Aplikasi ini dirancang sebagai sarana perkenalan dan pengujian pemahaman dasar seputar dunia IT dan komputer dengan cara yang menyenangkan.

## Tampilan Aplikasi

| Tampilan Awal | Tampilan Kuis | Hasil Awal |
| :---: | :---: | :---: |
| <img src="https://github.com/user-attachments/assets/02d8325b-fec8-470f-8ba8-87eb96605827"  width="250"> | <img src="https://github.com/user-attachments/assets/092d6f97-a1bc-4a69-a9e6-5240a53820cf" width="250"> | <img src="https://github.com/user-attachments/assets/a8ed5acf-e8e9-41f1-b79e-fdf9bdaf6fd3" width="250"> |

## Fitur Utama
- **Antarmuka Unik:** Desain antarmuka yang khas dengan tema terminal/hacker untuk menarik minat.
- **Kuis Interaktif:** Terdiri dari 10 soal pilihan ganda seputar dasar-dasar informatika.
- **Umpan Balik Visual:** Jawaban yang benar akan langsung disorot dengan warna hijau untuk membantu proses belajar.
- **Ringkasan Hasil:** Setelah kuis selesai, pengguna akan mendapatkan ringkasan skor dan total waktu pengerjaan.
- **Siklus Berulang:** Aplikasi dirancang agar pengguna dapat dengan mudah mengulang kuis setelah selesai.

## Alur Aplikasi
1. Pengguna membuka aplikasi dan disambut oleh *welcome screen* yang menantang.
2. Dengan menekan tombol **"Start Quiz"**, sesi kuis dimulai.
3. Pengguna menjawab 10 pertanyaan secara berurutan.
4. Setelah menjawab soal terakhir, sebuah dialog *pop-up* **"Ujian Selesai"** akan muncul, menampilkan skor dan waktu.
5. Setelah menekan tombol **"Tutup"** pada dialog, aplikasi akan secara otomatis kembali ke halaman awal, siap untuk sesi kuis berikutnya.

## Teknologi yang Digunakan
- **Framework:** [Flutter](https://flutter.dev/)
- **Bahasa Pemrograman:** [Dart](https://dart.dev/)
- **IDE:** Android Studio

## Cara Menjalankan Proyek
Untuk menjalankan proyek ini di mesin lokal Anda, ikuti langkah-langkah berikut:

1.  **Pastikan Flutter sudah terinstal.** Jika belum, ikuti panduan instalasi di [situs resmi Flutter](https://flutter.dev/docs/get-started/install).

2.  **Clone repositori ini:**
    ```sh
    git clone https://github.com/username-anda/nama-repositori-anda.git
    ```

3.  **Masuk ke direktori proyek:**
    ```sh
    cd nama-repositori-anda
    ```

4.  **Instal semua dependensi:**
    ```sh
    flutter pub get
    ```

5.  **Jalankan aplikasi:**
    ```sh
    flutter run
    ```
---

Jangan ragu untuk berkontribusi, memberikan saran, atau melaporkan bug dengan membuat *issue* baru.

Perubahan yang Dilakukan:

Memperbaiki Tabel Gambar: Tabel kini diformat dengan benar sehingga ketiga gambar akan tampil berdampingan di bawah header "Tampilan Awal", "Tampilan Kuis", dan "Hasil Akhir".

Menambah List (bullet points): Bagian "Fitur Utama" dan "Teknologi yang Digunakan" diubah menjadi bullet list agar lebih mudah dibaca.

Menambah List Bernomor: Bagian "Alur Aplikasi" dan "Cara Menjalankan Proyek" diubah menjadi daftar bernomor karena merupakan urutan langkah-langkah.

Membersihkan Perintah Terminal: Teks tambahan seperti Generated sh... dan IGNORE_WHEN_COPYING... telah dihapus dari blok kode, sehingga perintahnya bersih dan bisa langsung disalin.

Menambah Garis Pemisah: Ditambahkan garis pemisah (---) sebelum kalimat penutup untuk tampilan yang lebih rapi.
