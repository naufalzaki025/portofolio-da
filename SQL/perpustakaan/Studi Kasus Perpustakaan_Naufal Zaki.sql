CREATE DATABASE Perpustakaan;
USE Perpustakaan;

CREATE TABLE Buku(
ID_Buku VARCHAR (5) PRIMARY KEY not null,
Judul VARCHAR (50) not null,
Penerbit VARCHAR (50) not null,
Jumlah_Eksemplar INT not null,
CONSTRAINT CheckBuku1 CHECK (CHAR_LENGTH(ID_Buku)=5),
CONSTRAINT CheckBuku2 CHECK (ID_Buku REGEXP 'BU[0-9][0-9][0-9]'),
CONSTRAINT CheckBuku3 CHECK (Jumlah_Eksemplar >= 0)
);

CREATE TABLE Anggota(
ID_Anggota VARCHAR (5) PRIMARY KEY not null,
Nama VARCHAR (50) not null,
Alamat VARCHAR (100) not null,
Nomor_Telepon VARCHAR (13) not null,
Nomor_Anggota VARCHAR (3) not null,
CONSTRAINT CheckAnggota1 CHECK (CHAR_LENGTH(ID_Anggota)=5),
CONSTRAINT CheckAnggota2 CHECK (ID_Anggota REGEXP 'AG[0-9][0-9][0-9]')
);

CREATE TABLE Peminjaman(
ID_Peminjaman VARCHAR (5) PRIMARY KEY not null,
ID_Buku VARCHAR (5),
ID_Anggota VARCHAR (5),
Tanggal_Peminjaman DATETIME,
Tanggal_Pengembalian DATETIME,
Status_Peminjaman CHAR(1) NOT NULL, -- Y / T 
CONSTRAINT CheckPeminjaman1 CHECK (CHAR_LENGTH(ID_Peminjaman)=5),
CONSTRAINT CheckPeminjaman2 CHECK (ID_Peminjaman REGEXP 'PM[0-9][0-9][0-9]'),
CONSTRAINT FK_Peminjaman_Buku FOREIGN KEY (ID_Buku) REFERENCES Buku(ID_Buku) ON UPDATE CASCADE ON DELETE SET NULL,
CONSTRAINT FK_Peminjaman_Anggota FOREIGN KEY (ID_Anggota) REFERENCES Anggota(ID_Anggota) ON UPDATE CASCADE ON DELETE SET NULL
);



INSERT INTO Buku (ID_Buku, Judul, Penerbit, Jumlah_Eksemplar)
VALUES
('BU001', 'Buku Pemrograman Python', 'Informatika Media Pustaka', 10),
('BU002', 'Belajar Web Development dengan HTML', 'Gramedia Pustaka Utama', 8),
('BU003', 'Panduan Lengkap Jaringan Komputer', 'Elex Media Komputindo', 6),
('BU004', 'Desain Grafis dengan Adobe Photoshop', 'Cipta Media Pustaka', 5),
('BU005', 'Microsoft Excel untuk Pemula', 'Penerbit Andi', 12),
('BU006', 'Panduan Praktis Microsoft Word', 'Penerbit Erlangga', 7),
('BU007', 'Belajar Public Speaking dengan Mudah', 'Gramedia Pustaka Utama', 9),
('BU008', 'Manajemen Waktu untuk Meningkatkan Produktivitas', 'Penerbit Nulis Buku', 4),
('BU009', 'Membangun Kepercayaan Diri', 'Penerbit Gramedia', 15),
('BU010', 'Seni Berkomunikasi Efektif', 'Penerbit Obor', 3);

INSERT INTO Anggota (ID_Anggota, Nama, Alamat, Nomor_Telepon, Nomor_Anggota)
VALUES
('AG001', 'Andi Setiawan', 'Jl. Anggrek No. 12, Bandung', '081234567890', '001'),
('AG002', 'Budi Permana', 'Jl. Dahlia No. 8, Jakarta', '085798765432', '002'),
('AG003', 'Cici Lestari', 'Jl. Melati No. 5, Surabaya', '082112345678', '003'),
('AG004', 'Dedi Rahmat', 'Jl. Mawar No. 3, Semarang', '085634567890', '004'),
('AG005', 'Evi Susanti', 'Jl. Tulip No. 1, Yogyakarta', '081300009012', '005'),
('AG006', 'Fani Amelia', 'Jl. Anggrek No. 15, Bandung', '082478901234', '006'),
('AG007', 'Gita Cahyani', 'Jl. Dahlia No. 10, Jakarta', '085934567812', '007'),
('AG008', 'Hadi Prasetyo', 'Jl. Melati No. 7, Surabaya', '082256789034', '008'),
('AG009', 'Ika Sari', 'Jl. Mawar No. 5, Semarang', '085778901256', '009'),
('AG010', 'Joko Anwar', 'Jl. Tulip No. 3, Yogyakarta', '081490123456', '010');

INSERT INTO Peminjaman (ID_Peminjaman, ID_Buku, ID_Anggota, Tanggal_Peminjaman, Tanggal_Pengembalian, Status_Peminjaman)
VALUES
('PM001', 'BU001', 'AG001', '2024-04-22', '2024-05-06', 'T'), -- Belum dikembalikan
('PM002', 'BU001', 'AG002', '2024-05-07', '2024-05-20', 'Y'),
('PM003', 'BU002', 'AG003', '2024-04-29', '2024-05-13', 'Y'),
('PM004', 'BU002', 'AG004', '2024-05-14', '2024-05-27', 'Y'),
('PM005', 'BU003', 'AG005', '2024-04-29', '2024-05-13', 'T'), -- Belum dikembalikan
('PM006', 'BU004', 'AG006', '2024-04-29', '2024-05-13', 'Y'),
('PM007', 'BU005', 'AG007', '2024-04-29', '2024-05-13', 'T'), -- Belum dikembalikan
('PM008', 'BU006', 'AG008', '2024-04-29', '2024-05-13', 'Y'),
('PM009', 'BU007', 'AG009', '2024-04-29', '2024-05-13', 'T'), -- Belum dikembalikan
('PM010', 'BU008', 'AG010', '2024-04-29', '2024-05-13', 'Y');

-- Detail Peminjaman Buku oleh Anggota
SELECT
    P.ID_Peminjaman,
    P.ID_Buku,
    B.Judul,
    P.Tanggal_Peminjaman,
    P.Tanggal_Pengembalian,
    P.Status_Peminjaman
FROM Peminjaman P
JOIN Buku B ON P.ID_Buku = B.ID_Buku
WHERE P.ID_Anggota = 'AG001'; 

-- Jumlah Buku Dipinjam dan Nama Anggota
SELECT
    COUNT(*) AS Jumlah_Buku_Dipinjam,
    A.Nama AS Nama
FROM Peminjaman P
INNER JOIN Anggota A ON P.ID_Anggota = A.ID_Anggota
WHERE P.ID_Anggota = 'AG001';

-- Daftar Buku yang Belum Dipinjam
SELECT
    B.ID_Buku,
    B.Judul
FROM Buku B
WHERE B.ID_Buku NOT IN (SELECT ID_Buku FROM Peminjaman);

-- Total Jumlah Eksemplar Buku
SELECT
    COUNT(*) AS Jumlah_Total_Buku
FROM Buku;

-- Total Jumlah Eksemplar Buku
SELECT
    SUM(Jumlah_Eksemplar) AS Jumlah_Total_Eksemplar
FROM Buku;

-- Buku dengan Jumlah Eksemplar Lebih dari 5
SELECT
    B.ID_Buku,
    B.Judul,
    B.Jumlah_Eksemplar
FROM Buku B
WHERE B.Jumlah_Eksemplar > 5;

-- Buku Dipinjam Anggota dengan Status 'T'
SELECT
    B.ID_Buku,
    B.Judul,
    P.ID_Anggota,
    P.Status_Peminjaman
FROM Peminjaman P
JOIN Buku B ON P.ID_Buku = B.ID_Buku
WHERE P.ID_Anggota = 'AG001' AND P.Status_Peminjaman = 'T'; 
 