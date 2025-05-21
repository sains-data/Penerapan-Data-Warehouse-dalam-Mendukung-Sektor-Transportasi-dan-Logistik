# Penerapan-Data-Warehouse-dalam-Mendukung-Sektor-Transportasi-dan-Logistik
## Star Schema Data Warehouse

<img src="https://github.com/user-attachments/assets/1e52fecf-c484-4650-8bbe-7a91a367e1e7" alt="Gambar" style="display: block; margin: 0 auto;">


## Arsitektur Data Warehouse
![418910731-bdcec433-33b2-4b8c-b25e-de9c5b23ff64](https://github.com/user-attachments/assets/b4294e48-5b06-4dc7-bb95-26745334025c)

<ol>
  <li>
    <b>Bronze Layer : </b> Menyimpan data mentah apa adanya dari sistem sumber. Data diimpor dari file CSV ke dalam database SQL Server.
  </li>
  <li>
    <b>Silver Layer : </b> Lapisan ini mencakup proses pembersihan data, standarisasi, dan normalisasi untuk mempersiapkan data agar siap dianalisis.
  </li>
  <li>
    <b>Gold Layer : </b> Menyimpan data yang siap digunakan untuk bisnis, dimodelkan dalam bentuk skema bintang yang diperlukan untuk pelaporan dan analitik.
  </li>
</ol>

## Integration-Services-with-ETL
![214400984-618fe54a-d21c-4b2f-9f57-b565fcb35e4e](https://github.com/user-attachments/assets/6535fec8-18de-4f2e-b621-d86c56006160)


# 📖 Project Overview
<ol>
  <li>
    Arsitektur Data: Merancang Gudang Data Modern Menggunakan Arsitektur Medali dengan Lapisan Bronze, Silver, dan Gold.
  </li>
  <li>
    Pipeline ETL: Mengekstrak, mentransformasi, dan load data dari sistem sumber ke dalam gudang data.
  </li>
  <li>
    Pemodelan Data: Mengembangkan tabel fakta dan dimensi yang dioptimalkan untuk kueri analitik.
  </li>
  <li>
    Analitik & Report: Membuat laporan berbasis SQL dan dashboard untuk wawasan yang dapat ditindaklanjuti.
  </li>
</ol>
## 🚀 Project Requirements
Mengembangkan data warehouse modern menggunakan SQL Server untuk mengonsolidasi data transportasi & Logistik, memungkinkan pelaporan analitik dan pengambilan keputusan yang lebih informasi.

## spesifikasi : 
<ul>
  <li><strong>Sumber Data:</strong> Mengimpor data dari file CSV.</li>
  <li><strong>Kualitas Data:</strong> Membersihkan dan menyelesaikan masalah kualitas data sebelum dianalisis.</li>
  <li><strong>Integrasi:</strong> Menggabungkan data menjadi satu model data yang ramah pengguna, yang dirancang untuk kueri analitik.</li>
  <li><strong>Lingkup:</strong> Fokus pada dataset terbaru dan data histori.</li>
  <li><strong>Dokumentasi:</strong> Menyediakan dokumentasi yang jelas mengenai model data untuk mendukung pemangku kepentingan bisnis dan tim analitik.</li>
</ul>

## Tujuan Analitik & Pelaporan (BI) Berdasarkan Skema Data Warehouse Kami
![eda_steps_analysis](https://github.com/user-attachments/assets/e9c151f1-3019-4955-b58e-197b6813b718)


Mengembangkan analitik berbasis SQL untuk memberikan wawasan terperinci mengenai:
<ul>
  <li><strong>Perilaku Pelanggan:</strong> Analisis frekuensi pembelian, total pengeluaran, dan waktu rata-rata pengiriman pelanggan berdasarkan data dari <code>fact_shipment</code> dan <code>dim_customer</code>.</li>
  <li><strong>Kinerja Produk:</strong> Menganalisis kinerja produk berdasarkan jumlah pengiriman, pendapatan, dan waktu pengiriman rata-rata, menggunakan data dari <code>fact_shipment</code> dan <code>dim_product</code>.</li>
  <li><strong>Tren Penjualan:</strong> Melihat tren penjualan bulanan atau tahunan berdasarkan total penjualan dan jumlah pengiriman, dengan menggunakan data dari <code>fact_shipment</code> dan <code>dim_date</code>.</li>
</ul>
<p>Wawasan ini memberikan pemangku kepentingan dengan metrik bisnis utama, yang memungkinkan pengambilan keputusan strategis.</p>



