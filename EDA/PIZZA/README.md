# Analisis Penjualan Pizza

## Gambaran Proyek
Proyek ini menganalisis data penjualan pizza dari platform e-commerce makanan untuk mengidentifikasi pola penjualan, preferensi pelanggan, dan peluang strategi bisnis. Dataset berisi kolom: `order_id`, `pizza_id`, `quantity`, `order_date`, `order_time`, `unit_price`, `total_price`, `pizza_size`, `pizza_category`, `pizza_ingredients`, dan `pizza_name`. Analisis dilakukan di Google Colab dengan pendekatan **SQL** (menggunakan `pandasql`), **Exploratory Data Analysis (EDA)** dengan Python (Pandas, NumPy), dan **visualisasi** menggunakan Seaborn dan Matplotlib. Tujuan utama adalah menemukan pizza dan kategori terlaris, pola musiman, dan memberikan rekomendasi berbasis data, seperti strategi diskon.
Proyek ini menunjukkan keahlian seorang data analyst dalam pembersihan data, query SQL, analisis univariat/bivariat, dan visualisasi untuk mendukung pengambilan keputusan bisnis.

## Poin Inti Analisis
Berdasarkan analisis data penjualan pizza, berikut adalah temuan utama:

- **Pizza Terlaris**: Pizza seperti **The Classic Deluxe Pizza** menyumbang pendapatan terbesar, menjadikannya kandidat utama untuk fokus promosi dan stok tambahan.
- **Pola Musiman**: Penjualan pizza tertinggi di tahun 2015 terjadi pada **Juli (4300 transaksi)** dan **Mei (4239 transaksi)**, terendah pada **Oktober (3719 transaksi)**. Peningkatan terjadi di musim semi dan panas, diikuti penurunan di akhir tahun, dengan potensi lonjakan November terkait Harbolnas, acara belanja besar di Indonesia, menunjukkan adanya pola musiman yang kuat.
- **Kategori Populer**: Kategori **Classic** mendominasi pesanan, menunjukkan preferensi pelanggan yang dapat dioptimalkan untuk kampanye pemasaran.
- **Ukuran Pizza**: Ukuran **Large (L)** menghasilkan pendapatan tertinggi, menandakan bahwa ukuran ini dapat diprioritaskan untuk strategi penetapan harga.
- **Strategi Diskon dan Harga**: Pizza dengan harga rendah, seperti **The Hawaiian Pizza**, meningkatkan jumlah transaksi, terutama dengan diskon di bulan sepi (non-November). Pizza premium, seperti **The Classic Deluxe Pizza**, unggul karena kualitas, mendukung strategi penonjolan kualitas untuk margin keuntungan.

## Metodologi
1. **Pembersihan Data**:
   - Menghapus missing values dan duplikat.
   - Mengonversi `order_date` dari format **DDMMYY** (misalnya, `25/12/15`) ke datetime menggunakan `pd.to_datetime` dengan format `%d%m%y`.
   - Memfilter data dengan `quantity` positif.
   - Menambahkan kolom `Month` untuk analisis musiman.
2. **Query SQL**:
   - Menggunakan `pandasql` untuk query seperti aggregasi penjualan per `pizza_name`, `pizza_category`, `pizza_size`, dan tren bulanan.
3. **EDA**:
   - **Univariat**: Analisis distribusi `pizza_category`, `pizza_size`, dan `quantity`.
   - **Bivariat**: Analisis tren bulanan, hubungan harga dengan jumlah transaksi, dan pengaruh ukuran pizza terhadap pendapatan.
4. **Visualisasi**:
   - Line plot untuk tren transaksi bulanan.
   - Bar plot dan pie chart untuk distribusi kategori dan ukuran pizza.
   - Scatter plot untuk hubungan harga dan kuantitas.

## Rekomendasi Bisnis
- **Promosi Musiman**: Tingkatkan diskon dan kampanye pemasaran di bulan Mei, Juli, dan November untuk memanfaatkan momentum musiman, termasuk Harbolnas.
- **Optimalisasi Kategori dan Ukuran**: Fokus pada kategori Classic dan ukuran Large (L) untuk stok tambahan dan kampanye pemasaran.
- **Strategi Diskon**: Terapkan diskon pada pizza berharga rendah seperti The Hawaiian Pizza di bulan sepi (misalnya, Oktober) untuk meningkatkan transaksi.
- **Penetapan Harga**: Tonjolkan kualitas pizza premium seperti The Classic Deluxe Pizza untuk margin keuntungan, sambil menawarkan diskon pada pizza populer untuk volume transaksi.

## Teknologi yang Digunakan
- **Python**: Pandas, NumPy, Seaborn, Matplotlib
- **SQL**: pandasql untuk query data
- **Platform**: Google Colab
