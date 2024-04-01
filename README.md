# KF_BigDataAnalytics
Analisis kinerja bisnis Kimia Farma Tahun 2020-2023
Proyek ini bertujuan untuk melakukan analisis kinerja Kimia Farma selama periode tahun 2020 hingga 2023 menggunakan data transaksi yang tersedia. Analisis dilakukan dengan memanfaatkan Google BigQuery untuk pemrosesan data dan Google Looker Studio untuk visualisasi dan pembuatan dashboard interaktif.

Konten Proyek

rakamin_kf_query.sql: Query SQL digunakan untuk mengambil dan memproses data dari file csv yang disediakan melalui Google BigQuery untuk membuat tabel analisa.
Dashboard Looker: Dashboard interaktif dibuat di Google Looker Studio berdasarkan data hasil analisis. Dashboard mencakup berbagai visualisasi dan metrik kinerja Kimia Farma.
Struktur Folder
README.md: Dokumen ini berisi panduan penggunaan dan deskripsi proyek.
Petunjuk Penggunaan

SQL Query:

Jalankan query SQL di Google BigQuery untuk memproses data transaksi dan membuat tabel analisis.
Simpan hasil query dalam tabel baru dengan nama 'tabel_analisa' dalam dataset 'kimia_farma'.

Dashboard Looker:

Akses Google Looker Studio dan buka proyek yang sesuai.
Impor tabel analisis 'tabel_analisa' dari BigQuery sebagai sumber data.
Buat dashboard interaktif dengan berbagai visualisasi dan metrik kinerja Kimia Farma.
Simpan dan bagikan dashboard kepada pemangku kepentingan atau rekan tim.
