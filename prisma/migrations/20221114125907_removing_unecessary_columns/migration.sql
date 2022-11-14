/*
  Warnings:

  - You are about to drop the column `agama` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `alamatAsal` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `alamatPadang` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `buktiPembayaran` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `citaCita` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `fakultas` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `jenisKelamin` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `jurusan` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `krs` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `merkLaptop` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `noHp` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `processor` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `ram` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `riwayatPenyakit` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `subdivisi` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `tanggalLahir` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `tempatLahir` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `validationStatus` on the `profile` table. All the data in the column will be lost.
  - You are about to drop the column `vga` on the `profile` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `profile` DROP COLUMN `agama`,
    DROP COLUMN `alamatAsal`,
    DROP COLUMN `alamatPadang`,
    DROP COLUMN `buktiPembayaran`,
    DROP COLUMN `citaCita`,
    DROP COLUMN `fakultas`,
    DROP COLUMN `jenisKelamin`,
    DROP COLUMN `jurusan`,
    DROP COLUMN `krs`,
    DROP COLUMN `merkLaptop`,
    DROP COLUMN `noHp`,
    DROP COLUMN `processor`,
    DROP COLUMN `ram`,
    DROP COLUMN `riwayatPenyakit`,
    DROP COLUMN `subdivisi`,
    DROP COLUMN `tanggalLahir`,
    DROP COLUMN `tempatLahir`,
    DROP COLUMN `validationStatus`,
    DROP COLUMN `vga`;
