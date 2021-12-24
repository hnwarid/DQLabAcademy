USE dqlab;

-- 0 select all
SELECT * FROM ms_produk;

-- 1 select a coloumn from table
SELECT nama_produk FROM ms_produk;

-- 2  multiple coloumn from table
SELECT nama_produk, harga FROM ms_produk;

-- 3 limit row data
SELECT nama_produk FROM ms_produk LIMIT 3;

-- 4 prefix
SELECT ms_produk.kode_produk FROM ms_produk;

-- 5 alias multiple
SELECT no_urut AS nomor, nama_produk AS nama FROM ms_produk;

-- 6 alias simpler
SELECT no_urut nomor, nama_produk nama FROM ms_produk;

-- 7 prefix alias
SELECT ms_produk.harga AS harga_jual FROM ms_produk;

-- 8 alias table
SELECT * FROM ms_produk t2

-- 9 prefix alias table
SELECT t2.nama_produk, t2.harga FROM ms_produk t2;

-- 10 where
SELECT * FROM ms_produk WHERE nama_produk = 'Tas Travel Organizer DQLab';

-- 11 or
SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' OR nama_produk = 'Tas Travel Organizer DQLab' OR nama_produk = 'Flashdisk DQLab 64 GB';

-- 12 number filter
SELECT * FROM ms_produk WHERE harga > 50000;

-- 13 and
SELECT * FROM ms_produk WHERE nama_produk = 'Gantungan Kunci DQLab' AND harga < 50000;





