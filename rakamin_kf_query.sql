-- membuat tabel
CREATE TABLE kimia_farma.tabel_analisa AS (
  WITH sales_data AS (
    -- subquery menggabungkan data transaksi, informasi cabang, dan informasi produk
    SELECT 
      tr.transaction_id,
      tr.date,
      tr.branch_id,
      kc.branch_name,
      kc.kota,
      kc.provinsi,
      kc.rating AS rating_cabang,
      tr.customer_name,
      tr.product_id,
      pr.product_name,
      pr.price AS actual_price,
      tr.discount_percentage,
      -- menghitung persentase laba berdasarkan harga produk
      CASE
        WHEN pr.price <= 50000 THEN 0.10
        WHEN pr.price <= 100000 THEN 0.15
        WHEN pr.price <= 300000 THEN 0.20
        WHEN pr.price <= 500000 THEN 0.25
        ELSE 0.30
      END AS persentase_gross_laba,
      -- menghitung harga jual bersih (nett_sales) setelah diskon
      (pr.price - (pr.price * tr.discount_percentage)) AS nett_sales,
      -- menghitung laba bersih (nett_profit) setelah memperhitungkan diskon dan persentase laba
      (pr.price * (1 - tr.discount_percentage)) * CASE
        WHEN pr.price <= 50000 THEN 0.10
        WHEN pr.price <= 100000 THEN 0.15
        WHEN pr.price <= 300000 THEN 0.20
        WHEN pr.price <= 500000 THEN 0.25
        ELSE 0.30
      END AS nett_profit,
      tr.rating AS rating_transaksi
    FROM 
      kimia_farma.kf_final_transaction tr
    JOIN 
      kimia_farma.kf_kantor_cabang kc ON tr.branch_id = kc.branch_id
    JOIN 
      kimia_farma.kf_product pr ON tr.product_id = pr.product_id
  )
  SELECT * 
  FROM sales_data
);
