# Proyek Analisis SQL Watchlie 📊

## Deskripsi Proyek 📋
Proyek *Watchlie* adalah demonstrasi keahlian SQL untuk menganalisis data platform streaming. Proyek ini mengolah data pengguna, langganan, acara, dan riwayat tonton untuk menghasilkan wawasan strategis, seperti pola menonton, retensi langganan, dan popularitas konten. Dengan memanfaatkan *window functions*, *Common Table Expressions (CTE)*, dan teknik analisis lanjutan, proyek ini menunjukkan kemampuan merancang kueri kompleks dan mengatasi tantangan teknis dalam pengelolaan data. 🚀

## Struktur Database 🗄️
Database *Watchlie* terdiri dari empat tabel utama:
- **Users**: Menyimpan informasi pengguna (ID, nama, tanggal pendaftaran, negara). 🧑‍💼
- **Subscriptions**: Mencatat detail langganan (ID, user ID, tanggal mulai/akhir, tipe: Basic, Standard, Premium). 💳
- **Shows**: Berisi metadata acara (ID, judul, genre, tahun rilis, rating). 🎥
- **WatchHistory**: Merekam aktivitas tonton pengguna (user ID, show ID, tanggal tonton, durasi menit). ⏱️

Tabel-tabel ini dihubungkan dengan *foreign key* untuk menjaga integritas data, dirancang menggunakan MySQL. 🔗

## Fitur Utama dan Kueri SQL 🔍
Proyek ini mencakup kueri SQL yang menunjukkan kemampuan analisis data:

### Window Functions
1. **10 Pengguna dengan Waktu Tonton Tertinggi**  
   Mengidentifikasi 10 pengguna teratas berdasarkan total waktu tonton menggunakan `RANK()` dan `DENSE_RANK()`, dengan analisis perbedaan kedua fungsi untuk menangani data seri. 🏅

2. **Rata-rata Waktu Tonton per Genre**  
   Menghitung rata-rata waktu tonton per genre untuk setiap pengguna menggunakan `AVG() OVER (PARTITION BY ...)`, diurutkan berdasarkan pengguna dan genre untuk wawasan mendalam. 📈

3. **Acara Terpopuler per Genre**  
   Menentukan acara dengan waktu tonton tertinggi di setiap genre menggunakan `ROW_NUMBER()`, dengan pengurutan alfabet untuk menangani seri. 🎬

### Common Table Expressions (CTE)
4. **Segmentasi Pengguna Berdasarkan Frekuensi Tonton**  
   Mengelompokkan pengguna ke dalam kategori rendah (<5 sesi), sedang (5–10 sesi), dan tinggi (>10 sesi) menggunakan CTE, untuk analisis tingkat keterlibatan. 📊

5. **Analisis Retensi Langganan**  
   Menghitung persentase pengguna dengan langganan aktif (berdasarkan `end_date` setelah 21 Juni 2025) menggunakan CTE, mendukung strategi retensi. 🔄

6. **Pengguna Teraktif per Bulan**  
   Mengidentifikasi pengguna dengan waktu tonton tertinggi pada Januari 2025 menggunakan CTE, untuk analisis aktivitas bulanan. 📅

### Analisis Perilaku Pengguna
7. **Genre Terpopuler per Negara**  
   Menemukan genre paling populer di setiap negara berdasarkan waktu tonton menggunakan `RANK()`, diurutkan berdasarkan negara untuk wawasan geografis. 🌍

8. **Pola Tonton Berdasarkan Hari**  
   Menganalisis waktu tonton berdasarkan hari dalam seminggu untuk mengidentifikasi pola puncak, menggunakan fungsi tanggal seperti `EXTRACT`. 🕒

9. **Prediksi Churn Pengguna**  
   Mengidentifikasi pengguna berisiko churn (<3 sesi dalam 30 hari sebelum `end_date` langganan), untuk strategi retensi. 🚪

10. **Persentase Pengguna per Genre**  
    Menghitung persentase pengguna yang menonton setiap genre, memberikan wawasan preferensi konten. 😊

## Tantangan dan Solusi 🛠️
- **Data Waktu Tonton Seragam**: Kueri awal untuk acara terpopuler menghasilkan banyak judul per genre karena waktu tonton identik. Diperbaiki dengan `ROW_NUMBER()` dan tiebreaker alfabet. ✅
- **Error `only_full_group_by`**: Kueri untuk jumlah pengguna per `plan_type` gagal karena pelanggaran mode SQL. Diperbaiki dengan menyesuaikan `GROUP BY` dan menggunakan `COUNT` alih-alih `SUM`. 🔧

## Teknologi yang Digunakan 💻
- **Database**: MySQL
- **Fitur SQL**: Window Functions (`RANK`, `DENSE_RANK`, `ROW_NUMBER`, `AVG`), CTE, Join, Agregasi (`SUM`, `COUNT`, `AVG`), Fungsi Tanggal
- **Data**: Dataset simulasi dengan 50 pengguna, 50 acara, 50 langganan, dan 50 riwayat tonton

## Cara Menjalankan Proyek 🏃‍♂️
1. Clone repositori ini.
2. Buat database MySQL dan jalankan `schema.sql` untuk membuat tabel dan mengisi data.
3. Eksekusi kueri di `queries.sql` untuk melihat hasil analisis.
4. Eksplorasi visualisasi data (misal, diagram batang untuk distribusi genre). 📊

## Rencana Pengembangan 📈
- Menambahkan variasi data waktu tonton untuk meningkatkan akurasi peringkat.
- Mengintegrasikan visualisasi menggunakan Python (Matplotlib) atau alat BI seperti Power BI.
- Mengembangkan analisis tambahan, seperti pendapatan langganan atau demografi pengguna.

## Tentang Proyek 🌟
Proyek ini dirancang untuk memamerkan keahlian SQL dalam analisis data platform streaming, dari desain basis data hingga kueri kompleks. Proyek ini menunjukkan kemampuan mengatasi tantangan teknis dan menghasilkan wawasan yang actionable, cocok untuk portofolio data analyst. 🙌
