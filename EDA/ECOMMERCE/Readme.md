# Analisis Penjualan E-Commerce

## Gambaran Proyek
Proyek ini menganalisis data penjualan e-commerce menggunakan dataset dari Kaggle untuk mengidentifikasi pola penjualan, perilaku pelanggan, dan peluang strategi bisnis. Analisis dilakukan di Google Colab dengan pendekatan **SQL** (menggunakan `pandasql`), **Exploratory Data Analysis (EDA)** dengan Python (Pandas, NumPy), dan **visualisasi** menggunakan Seaborn dan Matplotlib. Tujuan utama adalah menemukan kategori terlaris, pola musiman (seperti Harbolnas), dan memberikan rekomendasi berbasis data, seperti strategi diskon.

Dataset berisi kolom: `Transaction_ID`, `User_Name`, `Age`, `Country`, `Product_Category`, `Purchase_Amount`, `Payment_Method`, dan `Transaction_Date`. Proyek ini menunjukkan keahlian seorang data analyst dalam pembersihan data, query SQL, analisis univariat/bivariat, dan visualisasi untuk mendukung pengambilan keputusan bisnis.

## Poin Inti Analisis
Berdasarkan analisis data penjualan e-commerce, berikut adalah temuan utama:

- **Kategori Terlaris**: Kategori seperti **Sport** menyumbang pendapatan terbesar, menunjukkan fokus utama bisnis. Ini menandakan bahwa kategori ini dapat diprioritaskan untuk stok tambahan atau kampanye pemasaran.
- **Pola Musiman**: Tren penjualan dan transaksi bulanan di tahun 2024 menunjukkan fluktuasi signifikan, dengan puncak pada **Januari**, **Mei**, dan **Oktober**, serta penurunan tajam setelah puncak tersebut. Lonjakan di Oktober kemungkinan terkait dengan persiapan Harbolnas, acara belanja besar di Indonesia, menunjukkan adanya pola musiman yang kuat.
- **Metode Pembayaran**: Distribusi metode pembayaran menunjukkan preferensi pelanggan terhadap **e-wallet**, yang dapat dioptimalkan melalui promosi seperti cashback atau integrasi pembayaran baru untuk meningkatkan pengalaman pelanggan.
- **Segmen Usia**: Kelompok usia **59 tahun** adalah pembeli terbesar, menjadikannya target ideal untuk kampanye pemasaran yang dipersonalisasi.
- **Pasar Utama**: Negara seperti **Jerman** dan **Meksiko** merupakan pasar terbesar, menunjukkan peluang ekspansi internasional atau strategi pemasaran yang disesuaikan dengan pasar tersebut.
- **Strategi Diskon**: Kategori dengan harga rendah, seperti **Toys**, mencatatkan jumlah transaksi yang lebih tinggi. Menerapkan diskon pada bulan-bulan dengan penjualan rendah (misalnya, setelah puncak musiman) dapat menjadi strategi efektif untuk meningkatkan pendapatan perusahaan.

## Metodologi
1. **Pembersihan Data**: Menghapus missing values, duplikat, dan memformat `Transaction_Date` ke datetime menggunakan Pandas. Kolom tambahan seperti `Month` dibuat untuk analisis musiman.
2. **Query SQL**: Menggunakan `pandasql` untuk query seperti aggregasi penjualan per kategori, tren bulanan, dan distribusi metode pembayaran.
3. **EDA**:
   - **Univariat**: Analisis distribusi `Purchase_Amount`, `Product_Category`, dan `Payment_Method`.
   - **Bivariat**: Analisis tren bulanan, hubungan usia dengan pembelian, dan efek harga rendah terhadap transaksi.
4. **Visualisasi**: Grafik seperti line plot untuk tren bulanan, bar plot untuk kategori terlaris, dan heatmap untuk korelasi, dibuat dengan Seaborn dan Matplotlib.

## Rekomendasi Bisnis
- **Promosi Musiman**: Tingkatkan diskon dan kampanye pemasaran di bulan Oktober dan November untuk memanfaatkan momentum Harbolnas.
- **Optimalisasi Pembayaran**: Fokus pada integrasi e-wallet dan promosi cashback untuk meningkatkan transaksi.
- **Targeting Pelanggan**: Sasar kelompok usia 59 tahun dengan kampanye yang dipersonalisasi.
- **Ekspansi Pasar**: Prioritaskan strategi pemasaran di Jerman dan Meksiko untuk memaksimalkan pendapatan.
- **Strategi Diskon**: Terapkan diskon pada kategori seperti Toys di bulan-bulan dengan transaksi rendah untuk mendorong penjualan.

## Teknologi yang Digunakan
- **Python**: Pandas, NumPy, Seaborn, Matplotlib
- **SQL**: pandasql untuk query data
- **Platform**: Google Colab
