# Penerapan-Data-Warehouse-dalam-Mendukung-Sektor-Transportasi-dan-Logistik
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
