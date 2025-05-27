-- analysis_queries.sql

-- Total Penjualan per Bulan
SELECT
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    SUM(total_cost) AS total_penjualan
FROM
    fact_shipment
GROUP BY
    EXTRACT(YEAR FROM date),
    EXTRACT(MONTH FROM date)
ORDER BY
    year, month;

-- Rata-rata Transaksi per Pelanggan
SELECT
    customer_id,
    AVG(total_cost) AS rata_rata_transaksi
FROM
    fact_shipment
GROUP BY
    customer_id
ORDER BY
    rata_rata_transaksi DESC;

-- Produk Terlaris Berdasarkan Wilayah
SELECT
    product_id,
    customer_id,
    SUM(total_cost) AS total_penjualan_produk
FROM
    fact_shipment
GROUP BY
    product_id, customer_id
ORDER BY
    total_penjualan_produk DESC;

-- Tren Pertumbuhan dari Tahun ke Tahun
SELECT
    EXTRACT(YEAR FROM date) AS tahun,
    SUM(total_cost) AS total_penjualan,
    LAG(SUM(total_cost)) OVER (ORDER BY EXTRACT(YEAR FROM date)) AS penjualan_tahun_lalu,
    (SUM(total_cost) - LAG(SUM(total_cost)) OVER (ORDER BY EXTRACT(YEAR FROM date))) / 
    LAG(SUM(total_cost)) OVER (ORDER BY EXTRACT(YEAR FROM date)) * 100 AS pertumbuhan_persen
FROM
    fact_shipment
GROUP BY
    EXTRACT(YEAR FROM date)
ORDER BY
    tahun;

-- Total Penjualan per Wilayah dan Tahun
SELECT
    customer_id,
    EXTRACT(YEAR FROM date) AS tahun,
    SUM(total_cost) AS total_penjualan
FROM
    fact_shipment
GROUP BY
    customer_id, EXTRACT(YEAR FROM date)
ORDER BY
    total_penjualan DESC;

-- Jumlah Pengiriman per Produk
SELECT
    product_id,
    COUNT(shipment_id) AS jumlah_pengiriman
FROM
    fact_shipment
GROUP BY
    product_id
ORDER BY
    jumlah_pengiriman DESC;
