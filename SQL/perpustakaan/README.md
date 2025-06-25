# Sistem Manajemen Perpustakaan: Proyek Analisis SQL 📚✨

## Deskripsi Proyek 📋
Proyek *Sistem Manajemen Perpustakaan* adalah demonstrasi keahlian SQL untuk mengelola dan menganalisis data perpustakaan. Proyek ini mencakup desain basis data relasional untuk melacak buku, anggota, dan peminjaman, serta kueri analitis untuk menghasilkan wawasan seperti status peminjaman, jumlah eksemplar, dan buku yang belum dipinjam. Dengan fokus pada integritas data melalui *constraint* dan kueri efisien, proyek ini menunjukkan kemampuan merancang solusi database yang robust untuk kebutuhan manajemen perpustakaan. 🚀

## Struktur Database 🗄️
Database *Perpustakaan* terdiri dari tiga tabel utama:
- **Buku**: Menyimpan informasi buku (ID, judul, penerbit, jumlah eksemplar) dengan *constraint* untuk memastikan ID berformat `BU[0-9][0-9][0-9]` dan jumlah eksemplar tidak negatif. 📖
- **Anggota**: Berisi data anggota (ID, nama, alamat, nomor telepon, nomor anggota) dengan *constraint* untuk ID berformat `AG[0-9][0-9][0-9]`. 🧑‍💼
- **Peminjaman**: Merekam transaksi peminjaman (ID, ID buku, ID anggota, tanggal peminjaman/pengembalian, status) dengan *foreign key* untuk integritas referensial dan ID berformat `PM[0-9][0-9][0-9]`. 📅

Semua tabel dirancang menggunakan MySQL dengan *constraint* seperti `CHECK` dan `FOREIGN KEY` untuk menjaga konsistensi data. 🔗

## Fitur Utama dan Kueri SQL 🔍
Proyek ini mencakup kueri SQL yang menunjukkan kemampuan analisis dan manajemen data perpustakaan:

### Analisis Peminjaman
1. **Detail Peminjaman per Anggota**  
   Menampilkan riwayat peminjaman untuk anggota tertentu (misal, `AG001`), termasuk judul buku, tanggal peminjaman, dan status, menggunakan `JOIN` untuk menggabungkan tabel `Peminjaman` dan `Buku`. 📋

2. **Jumlah Buku Dipinjam per Anggota**  
   Menghitung jumlah buku yang dipinjam oleh anggota tertentu dengan `COUNT` dan `JOIN` antara `Peminjaman` dan `Anggota`. 📚

3. **Buku dengan Status Belum Dikembalikan**  
   Mengidentifikasi buku yang masih dipinjam oleh anggota tertentu (status `T`) menggunakan `JOIN` dan filter `WHERE`. ⏳

### Analisis Inventaris Buku
4. **Daftar Buku Belum Dipinjam**  
   Menemukan buku yang belum pernah dipinjam menggunakan `NOT IN` untuk memeriksa tabel `Peminjaman`. 🔎

5. **Total Jumlah Buku dan Eksemplar**  
   Menghitung jumlah total buku (baris) dan total eksemplar menggunakan `COUNT` dan `SUM` pada tabel `Buku`. 📊

6. **Buku dengan Eksemplar Lebih dari 5**  
   Menampilkan buku dengan jumlah eksemplar lebih dari 5 menggunakan filter `WHERE` untuk analisis inventaris. 📈

## Tantangan dan Solusi 🛠️
- **Integritas Data**: Memastikan format ID yang konsisten (misal, `BU001`, `AG001`, `PM001`) dengan *constraint* `CHECK` dan pola regex. Solusi: Menambahkan validasi panjang karakter dan format regex pada schema. ✅
- **Efisiensi Kueri**: Kueri untuk buku yang belum dipinjam awalnya kompleks. Dioptimalkan dengan `NOT IN` untuk hasil yang lebih cepat dan jelas. ⚡

## Teknologi yang Digunakan 💻
- **Database**: MySQL
- **Fitur SQL**: `JOIN`, Agregasi (`COUNT`, `SUM`), Subkueri (`NOT IN`), *Constraint* (`CHECK`, `FOREIGN KEY`), Fungsi Tanggal
- **Data**: Dataset simulasi dengan 10 buku, 10 anggota, dan 10 transaksi peminjaman

## Cara Menjalankan Proyek 🏃‍♂️
1. Clone repositori ini ke perangkat Anda.
2. Buat database MySQL dan jalankan `schema.sql` untuk membuat tabel dan mengisi data.
3. Eksekusi kueri di `queries.sql` untuk menjelajahi analisis perpustakaan.
4. Visualisasikan hasil (misal, diagram batang untuk jumlah eksemplar) jika diperlukan. 📊

## Rencana Pengembangan 📈
- Menambahkan tabel untuk denda peminjaman terlambat untuk analisis keuangan.
- Mengintegrasikan visualisasi data menggunakan Python (Matplotlib) atau alat BI seperti Tableau.
- Mengembangkan kueri tambahan untuk analisis seperti frekuensi peminjaman per anggota atau popularitas buku berdasarkan penerbit.

## Tentang Proyek 🌟
Proyek ini dirancang untuk memamerkan keahlian SQL dalam manajemen dan analisis data perpustakaan. Dari desain schema dengan *constraint* hingga kueri analitis, proyek ini menunjukkan kemampuan membangun solusi database yang efisien dan terstruktur, ideal untuk portofolio analis data. 🙌
