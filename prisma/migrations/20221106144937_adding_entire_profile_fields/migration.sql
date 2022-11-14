/*
  Warnings:

  - You are about to drop the column `panggilan` on the `profile` table. All the data in the column will be lost.
  - Added the required column `agama` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `alamatAsal` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `alamatPadang` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `buktiPembayaran` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `citaCita` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `divisi` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `fakultas` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `jenisKelamin` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `jurusan` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `krs` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `merkLaptop` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nim` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `noHp` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `processor` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ram` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `riwayatPenyakit` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `subdivisi` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tanggalLahir` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tempatLahir` to the `Profile` table without a default value. This is not possible if the table is not empty.
  - Added the required column `vga` to the `Profile` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `profile` DROP COLUMN `panggilan`,
    ADD COLUMN `agama` VARCHAR(191) NOT NULL,
    ADD COLUMN `alamatAsal` VARCHAR(191) NOT NULL,
    ADD COLUMN `alamatPadang` VARCHAR(191) NOT NULL,
    ADD COLUMN `buktiPembayaran` LONGBLOB NOT NULL,
    ADD COLUMN `citaCita` VARCHAR(191) NOT NULL,
    ADD COLUMN `divisi` VARCHAR(191) NOT NULL,
    ADD COLUMN `fakultas` VARCHAR(191) NOT NULL,
    ADD COLUMN `jenisKelamin` VARCHAR(191) NOT NULL,
    ADD COLUMN `jurusan` VARCHAR(191) NOT NULL,
    ADD COLUMN `krs` LONGBLOB NOT NULL,
    ADD COLUMN `merkLaptop` VARCHAR(191) NOT NULL,
    ADD COLUMN `nim` INTEGER NOT NULL,
    ADD COLUMN `noHp` INTEGER NOT NULL,
    ADD COLUMN `processor` VARCHAR(191) NOT NULL,
    ADD COLUMN `ram` VARCHAR(191) NOT NULL,
    ADD COLUMN `riwayatPenyakit` VARCHAR(191) NOT NULL,
    ADD COLUMN `subdivisi` VARCHAR(191) NOT NULL,
    ADD COLUMN `tanggalLahir` DATETIME(3) NOT NULL,
    ADD COLUMN `tempatLahir` VARCHAR(191) NOT NULL,
    ADD COLUMN `vga` VARCHAR(191) NOT NULL;
