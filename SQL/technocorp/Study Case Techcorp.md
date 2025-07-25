# 🧠 TechCorp SQL Case Study

**TechCorp** adalah studi kasus berbasis SQL yang mensimulasikan skenario data untuk sebuah perusahaan teknologi fiktif. Studi ini dibuat untuk mengeksplorasi kemampuan analisis data menggunakan SQL, dengan fokus pada pemahaman relasi antar tabel, pengambilan insight bisnis, dan penggunaan fungsi agregat.

---

## 📂 Struktur Database

Database ini terdiri dari enam tabel utama yang saling terhubung:

- **Products**: Menyimpan informasi produk.
- **Customers**: Data pelanggan.
- **Orders**: Informasi pemesanan oleh pelanggan.
- **OrderDetails**: Detail produk yang dipesan per transaksi.
- **Employees**: Data karyawan perusahaan.
- **SupportTickets**: Tiket bantuan pelanggan yang ditangani karyawan.

Relasi antar tabel menggunakan foreign key untuk mensimulasikan sistem yang realistis.

---

## 🎯 Business Questions

Berikut adalah pertanyaan bisnis yang dijawab menggunakan SQL:

1. **Top 3 Pelanggan berdasarkan Total Nominal Pesanan**  
   Mengidentifikasi pelanggan dengan total pengeluaran tertinggi.

2. **Rata-rata Nominal Pemesanan**  
   Menghitung rata-rata total pembayaran dari semua pesanan.

3. **Karyawan dengan Performa Tinggi**  
   Menampilkan karyawan yang telah menyelesaikan lebih dari 4 tiket support.

4. **Produk yang Belum Pernah Dipesan**  
   Menemukan produk yang tidak memiliki riwayat pemesanan.

5. **Total Pendapatan dari Penjualan**  
   Menjumlahkan total nilai penjualan berdasarkan detail pesanan.

6. **Kategori Produk dengan Harga Rata-rata di Atas $500**  
   Mencari kategori premium berdasarkan rata-rata harga produk.

7. **Pelanggan dengan Transaksi di Atas $1000**  
   Menemukan pelanggan yang pernah melakukan pembelian besar.

---

## 💡 Tujuan Pembelajaran

- Mengasah kemampuan SQL untuk analisis data
- Membuat query kompleks dengan `JOIN`, `GROUP BY`, `HAVING`
- Menggunakan fungsi agregat seperti `SUM`, `COUNT`, `AVG`
- Memahami penggunaan `LEFT JOIN`, `DISTINCT`, dan `ENUM`
- Menyusun database yang terstruktur dan relasional

---

## ⚙️ Cara Menjalankan

1. **Buat database dan tabel:**
   Jalankan `schema.sql`
2. **Masukkan data sample:**
   Jalankan `data.sql`
3. **Jalankan query analisis:**
   Jalankan `queries.sql`

Direkomendasikan untuk digunakan pada **MySQL 8+** menggunakan tool seperti **MySQL Workbench**, **DBeaver**, atau **phpMyAdmin**.

---

## 📌 Catatan

Studi kasus ini dibuat sebagai bagian dari latihan mandiri dan portofolio SQL. Dataset bersifat fiktif dan disesuaikan untuk tujuan pembelajaran.

---

