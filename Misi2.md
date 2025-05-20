# LAPORAN PRAKTIKUM ANALISIS BIG DATA

<p align="center">
  <img src="images/image1.png" alt="Logo" width="50%">
</p>

**Anggota Kelompok:**

| Nama                     | NIM         |
|--------------------------|-------------|
| Lion Abdi Marga          | 121450047   |
| Lia Alyani               | 121450138   |
| Happy Syahrul Ramadhan   | 122450013   |
| Eli Dwi Putra Berema     | 122450064   |
| M. Deriansyah Okutra     | 122450101   |

**Program Studi Sains Data**  
**Fakultas Sains**  
**Institut Teknologi Sumatera**  
**Lampung Selatan**  
**2025**

---

## BAB I - Ringkasan Kebutuhan dari Misi

### 1.1 Tantangan Utama

- **Fragmentasi Data Operasional**  
  Data tersebar di ERP, CRM, GPS/IoT dan menyulitkan analisis terpusat.

- **Inefisiensi Operasional**  
  Tidak ada analitik historis & real-time → rute tidak optimal → boros waktu & biaya.

- **Keterbatasan Analitik**  
  Masih manual, rawan duplikasi dan kesalahan → tidak bisa prediksi permintaan atau pola insiden.

### 1.2 Tujuan Bisnis

- **Integrasi Data Holistik**  
  Bangun data warehouse dari semua sistem → analisa menyeluruh.

- **Optimasi Rute dan Biaya**  
  Analisis multidimensi: jarak, bahan bakar, lalu lintas → rute efisien → biaya turun 15%.

- **Analisis Prediktif**  
  Prediksi permintaan naik 20% → optimasi kapasitas & distribusi.

### 1.3 Stakeholder dan Kebutuhan

- **Operasional:** Optimasi armada & inventaris.  
- **IT:** Integrasi sistem & keamanan data.  
- **Keuangan:** Analisis biaya operasional.  
- **Analis Data:** Laporan performa & visualisasi.  
- **Customer Service:** Status pengiriman & keluhan.  
- **Manajemen:** Keputusan berbasis data.

---

## BAB II - Schema Konseptual Multidimensi

### 2.1 Deskripsi Umum Skema

Pendekatan yang digunakan: **Star Schema**  
- Tabel fakta `fact_shipment`: data transaksi pengiriman  
- Tabel dimensi: waktu, kendaraan, produk, pelanggan, rute, sorting hub, dan insiden

<p align="center">
  <img src="images/image2.png" alt="Schema Diagram" width="70%">
</p>

### 2.2 Relasi Antar Tabel

Tabel `fact_shipment` terhubung dengan:

- `dim_date`: analisa waktu
- `dim_route`: rute pengiriman
- `dim_vehicle`: kendaraan
- `dim_product`: produk
- `dim_customer`: pelanggan
- `dim_incident`: insiden pengiriman
- `dim_sortinghub`: hub sortir

---

## BAB III - Penjelasan Tiap Komponen

### 3.1 Tabel Fakta (`fact_shipment`)

Menyimpan data transaksi:  
- `total_cost`, `delay_duration`, `distance_travelled`, `fuel_cost`, `planned_arrival_time`, `actual_arrival_time`  
- Terhubung ke semua dimensi dengan foreign key

### 3.2 Tabel Dimensi

- **`dim_route`**: asal, tujuan, planned_distance  
- **`dim_vehicle`**: tipe, kapasitas, maintenance_status, fuel_type  
- **`dim_incident`**: jenis insiden & lokasi  
- **`dim_date`**: hierarki waktu  
- **`dim_product`**: kategori, berat, sensitivitas  
- **`dim_customer`**: wilayah, demografis  
- **`dim_sortinghub`**: lokasi hub, kapasitas, jam operasional

### 3.3 Hierarki & Relasi

- Star Schema → 1-n relasi dari dimensi ke `fact_shipment`
- Mendukung **drill-down** dan **roll-up** (contoh: per bulan → tahun)

---

## BAB IV - Justifikasi Desain Konseptual

### 4.1 Latar Belakang

Desain menjawab kebutuhan analisis performa, armada, dan biaya operasional.

### 4.2 Pendekatan Desain

- Gunakan **star schema** karena:
  - Sederhana
  - Efisien untuk OLAP
  - Fleksibel untuk analisis dari berbagai sudut (waktu, rute, produk, kendaraan)

### 4.3 Relevansi terhadap Kebutuhan

Desain memungkinkan:
1. Identifikasi pola keterlambatan
2. Hitung biaya per jenis produk
3. Lacak insiden & dampaknya
4. Bandingkan performa historis
5. Dukungan dashboard manajemen

---

## BAB V - Kesesuaian dengan Sumber Data

| Komponen        | Sumber Data                                               |
|-----------------|------------------------------------------------------------|
| `fact_shipment` | Data pengiriman & pelacakan                               |
| `dim_vehicle`   | Data armada (kapasitas, jenis, usia)                      |
| `dim_customer`  | CRM (wilayah, nama, atribut demografis)                  |
| `dim_product`   | ERP/gudang (kategori, berat, sensitivitas)               |
| `dim_incident`  | Laporan insiden                                           |
| `dim_date`      | Timestamp sistem                                          |
| `dim_route`     | Data rute internal (asal, tujuan, jarak)                 |
| `dim_sortinghub`| Data hub sortir (lokasi, kapasitas, jam operasional)     |

---