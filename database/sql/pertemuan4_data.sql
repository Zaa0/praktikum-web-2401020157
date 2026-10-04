-- Pertemuan 4: DML pengisian dan pengolahan data
USE praktikum_web_2401020157;

-- Mengisi dua data program studi
INSERT INTO program_studi (nama_prodi) VALUES
  ('Teknik Informatika'),
  ('Sistem Informasi');

-- Mengisi empat data mahasiswa (satu data sementara untuk pengujian DELETE)
INSERT INTO mahasiswa
  (nim, nama, email, usia, program_studi_id)
VALUES
  ('2401020157', 'Andrian Yuza Swanda',
   'andrian@example.com', 21, 1),
  ('2401020151', 'Christian Aprilio Sihite',
   'christian@example.com', 20, 1),
  ('2401020045', 'Muhammad Fauzi',
   'fauzi@example.com', 19, 2),
  ('2401020099', 'Data Sementara',
   'sementara@example.com', 18, 2);

-- Memperbarui email mahasiswa dengan NIM 2401020157
UPDATE mahasiswa
SET email = 'andrian.yuza@example.com'
WHERE nim = '2401020157';

-- Menghapus data sementara sehingga tersisa tiga mahasiswa
DELETE FROM mahasiswa
WHERE nim = '2401020099';

-- Menampilkan tiga data akhir beserta nama program studinya
SELECT m.nim, m.nama, m.email, m.usia,
  p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
  ON p.id = m.program_studi_id
ORDER BY m.nim;
