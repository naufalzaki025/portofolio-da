# ☕ Clean Cafe Sales Data

Proyek ini bertujuan untuk membersihkan data penjualan cafe dari file `dirty_cafe_sales.csv`, yang mengandung banyak nilai tidak valid dan null. Dataset akan digunakan untuk analisis lebih lanjut setelah proses cleaning.

---

## 📂 Dataset

Dataset berisi 10.000 transaksi dengan kolom:

- `Transaction ID`
- `Item`
- `Quantity`
- `Price Per Unit`
- `Total Spent`
- `Payment Method`
- `Location`
- `Transaction Date`

---

## 🧼 Data Cleaning Workflow

### 1. Import dan Load Dataset
Dataset dimuat menggunakan `pandas` dan ditinjau struktur datanya dengan `head()` dan `info()`.

### 2. Konversi Tipe Data
Beberapa kolom numerik (`Quantity`, `Price Per Unit`, `Total Spent`) masih berupa tipe `object`, sehingga dikonversi ke `float`.

### 3. Pembersihan Nilai Tidak Valid
Nilai-nilai seperti `'UNKNOWN'`, `'ERROR'`, `'-'`, string kosong, dll., dianggap tidak valid dan diubah menjadi `NaN`.

### 4. Penanganan Missing Values
Proses pengisian nilai kosong dilakukan dalam beberapa tahap:
- **Menghitung nilai yang hilang**:  
  - Jika dua dari tiga kolom (`Quantity`, `Price`, `Total`) tersedia, maka kolom ketiga dihitung otomatis.
- **Median berdasarkan Item**:  
  - Jika nilai masih kosong, diisi dengan **median nilai per jenis Item**.
- **Median global**:  
  - Jika masih kosong, isi dengan **median seluruh kolom**.

### 5. Penanganan Kolom Kategorikal
Kolom seperti `Item`, `Payment Method`, dan `Location` dibersihkan dari nilai tidak valid, lalu diisi dengan **modus** (nilai paling sering).

### 6. Penanganan Kolom Tanggal
`Transaction Date` dikonversi ke format datetime dan diisi dengan **median tanggal** jika kosong.

### 7. Cek Duplikasi
Dataset dicek apakah ada baris yang sama persis (duplikat). Hasilnya: **tidak ada duplikat**.

---

## ✅ Hasil Akhir

- Semua missing values berhasil ditangani
- Semua kolom memiliki tipe data yang sesuai
- Dataset siap digunakan untuk analisis lanjutan (EDA, visualisasi, machine learning, dll.)

---
