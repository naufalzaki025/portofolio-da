CREATE DATABASE Watchlie;
USE Watchlie;

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    signup_date DATE,
    country VARCHAR(50)
);

INSERT INTO Users (user_id, name, signup_date, country) VALUES
(1, 'Budi Santoso', '2024-01-01', 'Indonesia'),
(2, 'Ani Wijaya', '2024-01-15', 'Indonesia'),
(3, 'Cindy Lestari', '2024-02-01', 'Singapore'),
(4, 'Dedi Pratama', '2024-02-10', 'Malaysia'),
(5, 'Eka Putri', '2024-03-01', 'Indonesia'),
(6, 'Fajar Nugroho', '2024-03-15', 'Thailand'),
(7, 'Gita Sari', '2024-04-01', 'Indonesia'),
(8, 'Hadi Kurniawan', '2024-04-10', 'Singapore'),
(9, 'Indah Permata', '2024-05-01', 'Malaysia'),
(10, 'Joko Widodo', '2024-05-15', 'Indonesia'),
(11, 'Kiki Amalia', '2024-06-01', 'Indonesia'),
(12, 'Lina Marlina', '2024-06-15', 'Thailand'),
(13, 'Miko Saputra', '2024-07-01', 'Singapore'),
(14, 'Nina Rosita', '2024-07-10', 'Indonesia'),
(15, 'Omar Syahputra', '2024-08-01', 'Malaysia'),
(16, 'Putri Aisyah', '2024-08-15', 'Indonesia'),
(17, 'Qori Hidayat', '2024-09-01', 'Thailand'),
(18, 'Rina Susanti', '2024-09-10', 'Indonesia'),
(19, 'Sandi Pratama', '2024-10-01', 'Singapore'),
(20, 'Tina Melinda', '2024-10-15', 'Malaysia'),
(21, 'Udin Saputra', '2024-11-01', 'Indonesia'),
(22, 'Vina Lestari', '2024-11-10', 'Indonesia'),
(23, 'Wulan Sari', '2024-12-01', 'Thailand'),
(24, 'Xena Putri', '2024-12-15', 'Singapore'),
(25, 'Yudi Hermawan', '2025-01-01', 'Indonesia'),
(26, 'Zara Amira', '2025-01-15', 'Malaysia'),
(27, 'Agus Setiawan', '2025-02-01', 'Indonesia'),
(28, 'Bella Cantika', '2025-02-10', 'Thailand'),
(29, 'Cakra Wijaya', '2025-03-01', 'Singapore'),
(30, 'Eko Purnomo', '2025-03-15', 'Indonesia'),
(31, 'Fitriani', '2025-04-01', 'Indonesia'),
(32, 'Galih Pratama', '2025-04-10', 'Malaysia'),
(33, 'Hesti Purwanti', '2025-05-01', 'Indonesia'),
(34, 'Irfan Hakim', '2025-05-15', 'Thailand'),
(35, 'Julianti', '2025-06-01', 'Singapore'),
(36, 'Kurnia Sari', '2025-06-10', 'Indonesia'),
(37, 'Lia Ambarwati', '2025-06-11', 'Indonesia'),
(38, 'Mira Wulandari', '2025-06-12', 'Malaysia'),
(39, 'Nanda Putra', '2025-06-13', 'Indonesia'),
(40, 'Oki Setiana', '2025-06-14', 'Thailand'),
(41, 'Pandi Nugraha', '2025-06-15', 'Singapore'),
(42, 'Qila Aisyah', '2025-06-16', 'Indonesia'),
(43, 'Rudi Hartono', '2025-06-17', 'Indonesia'),
(44, 'Sinta Dewi', '2025-06-18', 'Malaysia'),
(45, 'Toni Wijaya', '2025-06-19', 'Thailand'),
(46, 'Umi Kalsum', '2025-06-20', 'Indonesia'),
(47, 'Vicky Pratama', '2025-06-21', 'Singapore'),
(48, 'Winda Sari', '2025-06-22', 'Indonesia'),
(49, 'Xaverius Tan', '2025-06-23', 'Malaysia'),
(50, 'Yanti Lestari', '2025-06-24', 'Indonesia');

CREATE TABLE Subscriptions (
    subscription_id INT PRIMARY KEY,
    user_id INT,
    start_date DATE,
    end_date DATE,
    plan_type VARCHAR(20),
    CONSTRAINT FK_userID FOREIGN KEY (user_id) REFERENCES Users(user_id) ON UPDATE CASCADE ON DELETE SET NULL
);

INSERT INTO Subscriptions (subscription_id, user_id, start_date, end_date, plan_type) VALUES
(1, 1, '2024-01-01', '2024-12-31', 'Basic'),
(2, 2, '2024-01-15', '2024-06-15', 'Premium'),
(3, 3, '2024-02-01', '2025-01-31', 'Standard'),
(4, 4, '2024-02-10', '2024-08-10', 'Basic'),
(5, 5, '2024-03-01', '2025-02-28', 'Premium'),
(6, 6, '2024-03-15', '2024-09-15', 'Standard'),
(7, 7, '2024-04-01', '2025-03-31', 'Basic'),
(8, 8, '2024-04-10', '2024-10-10', 'Premium'),
(9, 9, '2024-05-01', '2025-04-30', 'Standard'),
(10, 10, '2024-05-15', '2024-11-15', 'Basic'),
(11, 11, '2024-06-01', '2025-05-31', 'Premium'),
(12, 12, '2024-06-15', '2024-12-15', 'Standard'),
(13, 13, '2024-07-01', '2025-06-30', 'Basic'),
(14, 14, '2024-07-10', '2025-01-10', 'Premium'),
(15, 15, '2024-08-01', '2025-07-31', 'Standard'),
(16, 16, '2024-08-15', '2025-02-15', 'Basic'),
(17, 17, '2024-09-01', '2025-08-31', 'Premium'),
(18, 18, '2024-09-10', '2025-03-10', 'Standard'),
(19, 19, '2024-10-01', '2025-09-30', 'Basic'),
(20, 20, '2024-10-15', '2025-04-15', 'Premium'),
(21, 21, '2024-11-01', '2025-10-31', 'Standard'),
(22, 22, '2024-11-10', '2025-05-10', 'Basic'),
(23, 23, '2024-12-01', '2025-11-30', 'Premium'),
(24, 24, '2024-12-15', '2025-06-15', 'Standard'),
(25, 25, '2025-01-01', '2025-12-31', 'Basic'),
(26, 26, '2025-01-15', '2025-07-15', 'Premium'),
(27, 27, '2025-02-01', '2025-01-31', 'Standard'),
(28, 28, '2025-02-10', '2025-08-10', 'Basic'),
(29, 29, '2025-03-01', '2026-02-28', 'Premium'),
(30, 30, '2025-03-15', '2025-09-15', 'Standard'),
(31, 31, '2025-04-01', '2026-03-31', 'Basic'),
(32, 32, '2025-04-10', '2025-10-10', 'Premium'),
(33, 33, '2025-05-01', '2026-04-30', 'Standard'),
(34, 34, '2025-05-15', '2025-11-15', 'Basic'),
(35, 35, '2025-06-01', '2026-05-31', 'Premium'),
(36, 36, '2025-06-10', '2025-12-10', 'Standard'),
(37, 37, '2025-06-11', '2026-06-10', 'Basic'),
(38, 38, '2025-06-12', '2026-06-11', 'Premium'),
(39, 39, '2025-06-13', '2026-06-12', 'Standard'),
(40, 40, '2025-06-14', '2026-06-13', 'Basic'),
(41, 41, '2025-06-15', '2026-06-14', 'Premium'),
(42, 42, '2025-06-16', '2026-06-15', 'Standard'),
(43, 43, '2025-06-17', '2026-06-16', 'Basic'),
(44, 44, '2025-06-18', '2026-06-17', 'Premium'),
(45, 45, '2025-06-19', '2026-06-18', 'Standard'),
(46, 46, '2025-06-20', '2026-06-19', 'Basic'),
(47, 47, '2025-06-21', '2026-06-20', 'Premium'),
(48, 48, '2025-06-22', '2026-06-21', 'Standard'),
(49, 49, '2025-06-23', '2026-06-22', 'Basic'),
(50, 50, '2025-06-24', '2026-06-23', 'Premium');

CREATE TABLE Shows (
    show_id INT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    release_year INT,
    rating DECIMAL(3,1)
);

INSERT INTO Shows (show_id, title, genre, release_year, rating) VALUES
(1, 'Misteri Gunung', 'Thriller', 2023, 7.5),
(2, 'Cinta di Kota', 'Romance', 2022, 6.8),
(3, 'Petualang Muda', 'Adventure', 2024, 8.0),
(4, 'Hantu Rumah Tua', 'Horror', 2021, 6.5),
(5, 'Keluarga Bahagia', 'Comedy', 2023, 7.2),
(6, 'Prajurit Legenda', 'Action', 2022, 7.8),
(7, 'Dunia Fantasi', 'Fantasy', 2024, 8.3),
(8, 'Rahasia Cinta', 'Drama', 2023, 7.0),
(9, 'Penjelajah Waktu', 'Sci-Fi', 2022, 8.1),
(10, 'Kisah Nyata', 'Documentary', 2021, 7.4),
(11, 'Pencuri Hati', 'Romance', 2023, 6.9),
(12, 'Teror Malam', 'Horror', 2022, 6.3),
(13, 'Pahlawan Kota', 'Action', 2024, 7.7),
(14, 'Tawa Bersama', 'Comedy', 2023, 7.1),
(15, 'Dunia Ajaib', 'Fantasy', 2022, 8.2),
(16, 'Cinta Abadi', 'Drama', 2021, 6.7),
(17, 'Galaksi Jauh', 'Sci-Fi', 2024, 8.4),
(18, 'Sejarah Hidup', 'Documentary', 2023, 7.6),
(19, 'Cinta Pertama', 'Romance', 2022, 6.8),
(20, 'Hantu Modern', 'Horror', 2024, 6.4),
(21, 'Petualang Laut', 'Adventure', 2023, 7.9),
(22, 'Keren Banget', 'Comedy', 2022, 7.0),
(23, 'Prajurit Masa Depan', 'Action', 2021, 7.5),
(24, 'Dunia Sihir', 'Fantasy', 2024, 8.5),
(25, 'Kisah Sedih', 'Drama', 2023, 6.9),
(26, 'Perjalanan Waktu', 'Sci-Fi', 2022, 8.0),
(27, 'Hidup Nyata', 'Documentary', 2021, 7.3),
(28, 'Cinta Terlarang', 'Romance', 2024, 6.6),
(29, 'Malam Seram', 'Horror', 2023, 6.2),
(30, 'Penjelajah Gunung', 'Adventure', 2022, 7.8),
(31, 'Lucu Sekali', 'Comedy', 2021, 7.0),
(32, 'Pahlawan Super', 'Action', 2024, 7.6),
(33, 'Dunia Aneh', 'Fantasy', 2023, 8.1),
(34, 'Kisah Cinta', 'Drama', 2022, 6.8),
(35, 'Planet Lain', 'Sci-Fi', 2021, 8.2),
(36, 'Cerita Sejarah', 'Documentary', 2024, 7.5),
(37, 'Cinta Muda', 'Romance', 2023, 6.7),
(38, 'Hantu Kota', 'Horror', 2022, 6.1),
(39, 'Petualang Hutan', 'Adventure', 2021, 7.7),
(40, 'Tawa Rame', 'Comedy', 2024, 7.2),
(41, 'Prajurit Elite', 'Action', 2023, 7.4),
(42, 'Dunia Magis', 'Fantasy', 2022, 8.0),
(43, 'Cinta Tragis', 'Drama', 2021, 6.9),
(44, 'Masa Depan', 'Sci-Fi', 2024, 8.3),
(45, 'Kehidupan Nyata', 'Documentary', 2023, 7.4),
(46, 'Cinta Selamanya', 'Romance', 2022, 6.8),
(47, 'Malam Menyeramkan', 'Horror', 2021, 6.0),
(48, 'Penjelajah Langit', 'Adventure', 2024, 7.9),
(49, 'Kocak Abis', 'Comedy', 2023, 7.1),
(50, 'Pahlawan Dunia', 'Action', 2022, 7.5);

CREATE TABLE WatchHistory (
    user_id INT,
    show_id INT,
    watch_date DATE,
    watch_time_minutes INT,
    CONSTRAINT FK_usersID FOREIGN KEY (user_id) REFERENCES Users(user_id) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT FK_showID FOREIGN KEY (show_id) REFERENCES Shows(show_id) ON UPDATE CASCADE ON DELETE SET NULL
);

INSERT INTO WatchHistory (user_id, show_id, watch_date, watch_time_minutes) VALUES
(1, 1, '2025-01-01', 45),
(2, 2, '2025-01-02', 60),
(3, 3, '2025-01-03', 30),
(4, 4, '2025-01-04', 75),
(5, 5, '2025-01-05', 50),
(6, 6, '2025-01-06', 90),
(7, 7, '2025-01-07', 40),
(8, 8, '2025-01-08', 65),
(9, 9, '2025-01-09', 55),
(10, 10, '2025-01-10', 70),
(11, 11, '2025-01-11', 35),
(12, 12, '2025-01-12', 80),
(13, 13, '2025-01-13', 60),
(14, 14, '2025-01-14', 45),
(15, 15, '2025-01-15', 50),
(16, 16, '2025-01-16', 70),
(17, 17, '2025-01-17', 40),
(18, 18, '2025-01-18', 55),
(19, 19, '2025-01-19', 65),
(20, 20, '2025-01-20', 30),
(21, 21, '2025-01-21', 75),
(22, 22, '2025-01-22', 50),
(23, 23, '2025-01-23', 60),
(24, 24, '2025-01-24', 45),
(25, 25, '2025-01-25', 70),
(26, 26, '2025-01-26', 55),
(27, 27, '2025-01-27', 40),
(28, 28, '2025-01-28', 65),
(29, 29, '2025-01-29', 50),
(30, 30, '2025-01-30', 80),
(31, 31, '2025-01-31', 35),
(32, 32, '2025-02-01', 60),
(33, 33, '2025-02-02', 45),
(34, 34, '2025-02-03', 70),
(35, 35, '2025-02-04', 55),
(36, 36, '2025-02-05', 40),
(37, 37, '2025-02-06', 65),
(38, 38, '2025-02-07', 50),
(39, 39, '2025-02-08', 75),
(40, 40, '2025-02-09', 60),
(41, 41, '2025-02-10', 45),
(42, 42, '2025-02-11', 70),
(43, 43, '2025-02-12', 55),
(44, 44, '2025-02-13', 40),
(45, 45, '2025-02-14', 65),
(46, 46, '2025-02-15', 50),
(47, 47, '2025-02-16', 75),
(48, 48, '2025-02-17', 60),
(49, 49, '2025-02-18', 45),
(50, 50, '2025-02-19', 70);

-- Siapa 10 pengguna dengan total waktu tonton tertinggi?
WITH UserWatchTime AS (
    SELECT 
        u.user_id, 
        u.name, 
        SUM(w.watch_time_minutes) AS total_watch_time,
        RANK() OVER (ORDER BY SUM(w.watch_time_minutes) DESC) AS genre_rank
    FROM Users u
    JOIN WatchHistory w ON u.user_id = w.user_id
	GROUP BY u.user_id, u.name
)
SELECT name, total_watch_time
FROM UserWatchTime
ORDER BY total_watch_time DESC LIMIT 10;

-- Berapa rata-rata waktu tonton per genre untuk setiap pengguna?
WITH UserGenreWatchTime AS (
    SELECT 
        u.user_id, 
        u.name, 
        s.genre, 
        SUM(w.watch_time_minutes) AS total_watch_time
    FROM Users u
    JOIN WatchHistory w ON u.user_id = w.user_id
    JOIN Shows s ON w.show_id = s.show_id
    GROUP BY u.user_id, u.name, s.genre
)
SELECT 
    user_id, 
    name, 
    genre, 
    total_watch_time,
    AVG(total_watch_time) OVER (PARTITION BY user_id) AS avg_watch_time_per_user
FROM UserGenreWatchTime
ORDER BY user_id, genre;

-- Dalam setiap genre, acara mana yang memiliki total waktu tonton tertinggi?
WITH TitleWatchTime AS (
    SELECT 
        s.title, 
        s.genre, 
        SUM(w.watch_time_minutes) AS total_watch_time,
        ROW_NUMBER() OVER (PARTITION BY s.genre ORDER BY SUM(w.watch_time_minutes) DESC, s.title ASC) AS title_rank
    FROM Shows s
    JOIN WatchHistory w ON s.show_id = w.show_id
    GROUP BY s.title, s.genre
)
SELECT genre, title, total_watch_time
FROM TitleWatchTime
WHERE title_rank = 1
ORDER BY title;

-- Berapa jumlah pengguna di setiap kategori?
SELECT s.plan_type, SUM(s.user_id) AS jumlah_pengguna FROM Subscriptions s JOIN Users u ON s.user_id = u.user_id GROUP BY s.plan_type ORDER BY jumlah_pengguna DESC;
-- Berapa persentase pengguna yang masih memiliki langganan aktif (berdasarkan end_date setelah tanggal saat ini, 21 Juni 2025)?
WITH Counts AS (
    SELECT 
        COUNT(DISTINCT user_id) AS total_users,
        COUNT(DISTINCT CASE WHEN end_date > '2025-06-21' OR end_date IS NULL THEN user_id END) AS active_users
    FROM Subscriptions
)
SELECT 
    total_users, 
    active_users, 
    (active_users * 100.0 / total_users) AS active_percentage
FROM Counts;
-- Siapa pengguna dengan waktu tonton tertinggi di bulan Januari 2025?
SELECT
	u.name, SUM(w.watch_time_minutes) AS total_menit 
    FROM Users u 
    JOIN WatchHistory w ON u.user_id = w.user_id 
    WHERE w.watch_date BETWEEN '2025-01-01' AND '2025-01-31'
    GROUP BY u.user_id
    ORDER BY total_menit DESC;
-- Genre apa yang paling populer di setiap negara berdasarkan total waktu tonton? Urutkan hasil berdasarkan negara dan waktu tonton.\
WITH GenreWatchTime AS (
    SELECT 
        u.country, 
        s.genre, 
        SUM(w.watch_time_minutes) AS total_watch_time,
        RANK() OVER (PARTITION BY u.country ORDER BY SUM(w.watch_time_minutes) DESC) AS genre_rank
    FROM Users u
    JOIN WatchHistory w ON u.user_id = w.user_id
    JOIN Shows s ON w.show_id = s.show_id
    GROUP BY u.country, s.genre
)
SELECT country, genre, total_watch_time
FROM GenreWatchTime
WHERE genre_rank = 1
ORDER BY country;
