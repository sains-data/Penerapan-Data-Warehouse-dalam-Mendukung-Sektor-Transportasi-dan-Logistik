# LAPORAN TUGAS MISI PERTAMA
# PERGUDANGAN DATA RA

<img src="https://github.com/user-attachments/assets/1c73bab6-f989-4948-90e5-d7402f4d8998" alt="Gambar" style="display: block; margin: 0 auto; width: 50%;">


**Anggota:**

| Nama                    | NPM        |
|-------------------------|------------|
| Lion Abdi Marga         | 121450047  |
| Lia Alyani              | 121450138  |
| Happy Syahrul Ramadhan  | 122450013  |
| Eli Dwi Putra Berema    | 122450064  |
| M. Deriansyah Okutra    | 122450101  |

**Program Studi Sains Data**
**Fakultas Sains**
**Institut Teknologi Sumatera**
**Lampung Selatan**
**2025**

## BAB 1
## Profil Industri & Masalah Bisnis

### 1.1 Profil Industri

Industri logistik dan transportasi berperan krusial dalam mendukung rantai pasok global, mencakup pengelolaan armada, optimasi rute, dan distribusi barang. Operasionalnya melibatkan data dari berbagai sumber seperti ERP (manajemen pesanan dan inventaris), GPS & IoT (pelacakan armada dan kondisi barang), CRM (interaksi pelanggan), serta data eksternal seperti cuaca dan regulasi. Tantangan utama muncul dari fragmentasi data antar sistem, yang menghambat analisis komprehensif dan efisiensi operasional.

Implementasi Data Warehouse (DW) menjadi solusi strategis untuk mengintegrasikan data tersebut, memungkinkan analisis performa pengiriman, prediksi permintaan, dan optimasi biaya. Teknologi OLAP dan BI mempercepat pengambilan keputusan berbasis data. Perusahaan global seperti DHL dan FedEx telah membuktikan efektivitas DW dalam meningkatkan efisiensi logistik hingga 25%.

### 1.2 Masalah Bisnis

Perusahaan logistik menghadapi sejumlah tantangan signifikan yang menghambat efisiensi dan meningkatkan daya saing. Pertama, fragmentasi data menyulitkan akses informasi terpusat karena data tersebar di berbagai sistem seperti ERP, GPS, dan CRM. Hal ini menghambat analisis komprehensif dan menyebabkan inefisiensi, contohnya dalam integrasi data biaya bahan bakar untuk perencanaan yang akurat. Kedua, inefisiensi operasional sering terjadi akibat rute pengiriman yang tidak optimal karena kurangnya pemanfaatan data historis dan *real-time*, yang berujung pada peningkatan biaya dan keterlambatan. Selain itu, pelacakan *real-time* yang tidak akurat menyulitkan pemantauan armada dan kondisi barang, terutama untuk pengiriman sensitif.

Tantangan lain termasuk pengambilan keputusan reaktif akibat minimnya analisis prediktif, yang membuat perusahaan gagal mengantisipasi gangguan dan lonjakan permintaan. Akibatnya, keterlambatan pengiriman dapat meningkat. Terakhir, semua permasalahan ini berkontribusi pada biaya operasional yang tinggi akibat pemborosan sumber daya, duplikasi data, dan kesalahan manual dalam pelaporan. Secara keseluruhan, tantangan-tantangan ini secara signifikan mempengaruhi efisiensi dan daya saing perusahaan logistik.

## BAB 2
## Daftar Stakeholder & Tujuan Bisnis

### 2.1 Daftar Stakeholder

Berikut adalah daftar stakeholder yang terlibat dalam pengembangan data warehouse serta tujuan bisnis utama yang ingin dicapai untuk meningkatkan efisiensi dan daya saing perusahaan logistik:

| No | Stakeholder | Peran/Kepentingan |
|----|-------------|-------------------|
| 1 | Departemen Operasional | Mengelola armada, optimasi rute, dan pemantauan inventaris. |
| 2 | Departemen IT | Bertanggung jawab atas integrasi sistem dan keamanan data dalam DW. |
| 3 | Departemen Keuangan | Mengelola dan mengontrol biaya operasional dan menyediakan insight finansial dari data terintegrasi untuk efisiensi budgeting. |
| 4 | Departemen Analis Data | Melakukan analisis performa logistik, membuat laporan dan visualisasi dari DW. |
| 5 | Departemen Customer Service | Memberikan informasi akurat terkait status pengiriman dan menangani keluhan terkait keterlambatan atau kerusakan barang secara proaktif. |
| 6 | Manajemen Eksekutif | Mengambil keputusan strategis berdasarkan insight dari semua departemen dan menentukan arah investasi teknologi dan inisiatif efisiensi. |

### 2.2 Tujuan Bisnis

| No | Tujuan Bisnis |
|----|---------------|
| 1 | Mengintegrasikan data dari berbagai sistem (ERP, CRM, GPS) untuk analisis holistik. |
| 2 | Mengoptimalkan rute pengiriman guna menurunkan biaya operasional. |
| 3 | Meningkatkan kemampuan prediksi permintaan berdasarkan pola historis dan musiman. |

## BAB 3
## Fakta & Dimensi

Tabel Fakta dan Dimensi (diagram dan penjelasan) berdasarkan permasalahan bisnis yang dihadapi, maka dapat diidentifikasi sejumlah kebutuhan bisnis yang dapat diselesaikan pada penjelasan berikut

![Fakta dan Dimensi](images/image2.png)

### 3.1 Tabel Fakta

**fact_shipment**

Tabel fakta ini adalah tabel yang menyimpan data transaksional terkait dengan pengiriman. Setiap entri di fact_shipment menggambarkan satu pengiriman dan memiliki beberapa foreign key yang menghubungkannya dengan tabel dimensi.

1. **shipment_id** (PK) : shipment_id untuk setiap pengiriman. Ini adalah primary key dari tabel ini yang digunakan untuk mengidentifikasi setiap transaksi pengiriman secara individual.
2. **date_id** (FK) : Merujuk ke date_id dalam DimDate. Kolom ini menunjukkan tanggal pengiriman tersebut terjadi, memungkinkan analisis berdasarkan waktu (misalnya, harian, bulanan, tahunan).
3. **route_id** (FK) : Merujuk ke route_id dalam DimRoute. Menyediakan informasi tentang rute yang diambil untuk pengiriman, termasuk lokasi asal, tujuan, dan jarak yang direncanakan.
4. **vehicle_id** (FK) : Merujuk ke vehicle_id dalam DimVehicle. Menghubungkan pengiriman dengan kendaraan yang digunakan. Ini memungkinkan untuk analisis berdasarkan tipe kendaraan, status kendaraan, atau efisiensi bahan bakar kendaraan.
5. **product_id** (FK) : Merujuk ke product_id dalam DimProduct. Menyediakan informasi tentang produk yang dikirim, termasuk nama produk, kategori produk, dan karakteristik khusus seperti sensitivitas terhadap suhu.
6. **customer_id** (FK) : Merujuk ke customer_id dalam DimCustomer. Menyediakan informasi mengenai pelanggan yang menerima barang, termasuk nama dan wilayah geografis pelanggan.
7. **sortinghub_id** (FK) : Merujuk ke sortinghub_id dalam DimSortingHub. Menyediakan informasi tentang hub sortasi tempat barang disortir sebelum melanjutkan ke tujuan akhir.
8. **incident_id** (FK) : Merujuk ke incident_id dalam DimIncident. Menyimpan informasi tentang insiden yang terjadi selama pengiriman, seperti keterlambatan atau kerusakan barang.
9. **planned_departure_time** : Waktu yang direncanakan untuk keberangkatan pengiriman. Data ini digunakan untuk memantau apakah pengiriman tepat waktu atau terlambat.
10. **actual_departure_time** : Waktu sebenarnya saat pengiriman berangkat. Dapat dibandingkan dengan planned_departure_time untuk mengukur keterlambatan.
11. **planned_arrival_time** : Waktu yang direncanakan untuk kedatangan pengiriman.
12. **actual_arrival_time** : Waktu sebenarnya saat pengiriman tiba. Mengukur apakah pengiriman tiba sesuai dengan rencana atau terlambat.
13. **delivery_status** : Status pengiriman (misalnya, "selesai", "tertunda", "gagal"). Ini adalah indikator kunci untuk status pengiriman.
14. **distance_travelled** : Jarak yang ditempuh oleh kendaraan selama pengiriman. Ini dapat digunakan untuk analisis rute dan efisiensi bahan bakar.
15. **fuel_cost** : Biaya bahan bakar yang digunakan dalam pengiriman. Kolom ini berguna untuk menghitung total biaya pengiriman.
16. **total_cost** : Biaya total yang dikeluarkan untuk pengiriman, mencakup biaya bahan bakar, tenaga kerja, dan biaya operasional lainnya.
17. **delay_duration** : Durasi keterlambatan jika pengiriman tidak tepat waktu. Dapat digunakan untuk menganalisis keterlambatan pengiriman.
18. **total_time_in_transit** : Waktu total yang dihabiskan selama pengiriman dari keberangkatan hingga kedatangan.
19. **total_distance** : Total jarak yang ditempuh selama pengiriman, yang mencakup semua rute yang dilalui.

### 3.2 Tabel Dimensi

1. **dim_date**

| Kolom | Deskripsi |
|-------|-----------|
| date_id (PK) | ID unik untuk setiap tanggal. |
| date | Tanggal pengiriman atau kejadian terkait pengiriman. |

2. **dim_route**

| Kolom | Deskripsi |
|-------|-----------|
| route_id (PK) | ID unik untuk setiap rute pengiriman. |
| location_origin | Lokasi asal pengiriman. |
| location_destination | Lokasi tujuan pengiriman. |
| planned_distance | Jarak yang direncanakan untuk rute tersebut. |

3. **dim_vehicle**

| Kolom | Deskripsi |
|-------|-----------|
| vehicle_id (PK) | ID unik untuk setiap kendaraan. |
| vehicle_type | Jenis kendaraan (misalnya, truk, van, dll.). |
| capacity | Kapasitas kendaraan. |
| gps_device_id | ID perangkat GPS yang terpasang pada kendaraan. |
| maintenance_status | Status pemeliharaan kendaraan (baik, rusak, dll.). |
| fuel_type | Jenis bahan bakar kendaraan (misalnya, bensin, diesel). |
| vehicle_age | Usia kendaraan. |

4. **dim_product**

| Kolom | Deskripsi |
|-------|-----------|
| product_id (PK) | ID unik untuk setiap produk. |
| product_name | Nama produk |
| product_category | Kategori produk (misalnya, elektronik, pakaian) |
| is_sensitive | Menandakan apakah produk sensitif terhadap suhu atau kelembapan atau bantingan. |
| product_weight | Berat produk. |
| product_dimensions | Dimensi produk (panjang, lebar, tinggi). |

5. **dim_customer**

| Kolom | Deskripsi |
|-------|-----------|
| customer_id (PK) | ID unik untuk setiap pelanggan. |
| customer_name | Nama pelanggan. |
| gender | jenis kelamin customer |
| date_of_birtday | tgl lahir customer |
| region | Wilayah atau lokasi geografis pelanggan. |

6. **dim_incident**

| Kolom | Deskripsi |
|-------|-----------|
| incident_id (PK) | ID unik untuk setiap insiden. |
| incident_type | Jenis insiden yang terjadi ( kecelakaan, keterlambatan). |
| description | Deskripsi insiden. |

7. **dim_sortinghub**

| Kolom | Deskripsi |
|-------|-----------|
| sortinghub_id (PK) | ID unik untuk setiap hub sortir |
| sortinghub_name | Nama tempat sortir |
| sortinghub_location | Lokasi hub sortir. |
| operational_hours | Jam operasional hub sortir |
| capacity | Kapasitas hub dalam hal volume atau barang. |
| sortinghub_type | Jenis hub (misal: pusat distribusi, hub regional). |

## BAB 4
## Sumber Data & Metadata

### 4.1 Sumber Data dan Metadata

Perancangan Data Warehouse pada industri logistik dan transportasi membutuhkan integrasi data dari berbagai sumber utama yang berkaitan dengan operasional pengiriman barang. Tabel berikut merangkum sumber data, deskripsi singkat, frekuensi pembaruan, serta contoh atribut kunci sebagai bagian dari metadata teknis.

#### 4.1.1 Tabel Sumber Data, Frekuensi, dan Metadata

| Sumber Data | Deskripsi | Frekuensi | Contoh Atribut & Data |
|-------------|-----------|-----------|------------------------|
| **Pengiriman** | Mencakup jadwal pengiriman, rute, kendaraan, serta status pengiriman | Harian | **shipment_id**: S0001, **vehicle_id**: V04, **delivery_status**: Tepat Waktu |
| **Kendaraan** | Informasi kendaraan yang digunakan dalam pengiriman, termasuk kapasitas dan jenis bahan bakar | Bulanan | **vehicle_id**: V04, **type**: Truk Ringan, **fuel_type**: Solar |
| **Pelanggan** | Data entitas yang terlibat dalam pengiriman, baik pengirim maupun penerima | Bulanan | **customer_id**: C004, **name**: PT Sejahtera, **location**: Jakarta |
| **Produk** | Rincian barang yang dikirim, seperti kategori, berat, dan ID produk | Bulanan | **product_id**: P005, **category**: Elektronik, **weight**: 25 kg |
| **Gangguan** | Informasi terkait kendala dalam pengiriman seperti kemacetan atau keterlambatan | Harian | **incident_id**: I02, **description**: Kemacetan, **delay_impact**: 13 menit |

Kelima jenis data ini merupakan pilar utama dalam arsitektur Data Warehouse untuk sektor logistik. Data Pengiriman mencatat aktivitas logistik harian untuk mengevaluasi ketepatan waktu dan efisiensi distribusi, sementara Data Armada mengoptimalkan penggunaan kendaraan dan biaya operasional. Data Pelanggan membantu dalam segmentasi dan personalisasi layanan, dan Data Produk mengelompokkan barang untuk menyesuaikan metode pengiriman. Data Gangguan memberikan konteks eksternal yang mempengaruhi pengiriman, meningkatkan akurasi perencanaan dan mitigasi risiko. Integrasi kelima data ini mendukung analisis operasional dan pengambilan keputusan berbasis data.
