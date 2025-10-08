![Sampul](image.png)
# Praktikum 1 Membangun layout di Flutter
Membuat projek fluter baru 
![projek new](image-1.png)
Buka file main.dart lalu ganti dengan kode berikut, dan isikan nama dan nim
![main.dart](image-2.png)
Kemudian menampilkan di aplikasi saya 
![hello word](image-3.png)
Layout utama berupa Column yang berisi beberapa baris. Baris pertama adalah bagian Judul, berupa Row dengan tiga anak: kolom teks (2 baris teks, dibungkus Expanded agar memakan ruang tersisa), ikon bintang, dan angka. Baris kedua adalah bagian Tombol, juga Row dengan tiga anak, masing-masing kolom berisi ikon dan teks. Pendekatan bottom-up dianjurkan: buat dulu widget terkecil dalam variabel atau fungsi untuk meminimalkan kebingungan dari kode layout yang bertumpuk.
![projek](image-4.png)
Untuk soal 1–3: letakkan Column di dalam Expanded agar menyesuaikan ruang di Row dan atur crossAxisAlignment: CrossAxisAlignment.start supaya kontennya berada di awal, bungkus baris pertama teks dengan Container untuk memberi padding: 8 dan set teks 'Batu, Malang, Indonesia' berwarna abu-abu, lalu di baris judul dua item terakhir berupa ikon bintang berwarna merah dan teks "41" dibungkus Container dengan padding: 32, serta ganti isi body 'Hello World' dengan variabel titleSection.
![projek fix](image-5.png)
# Praktikum 2 Implementasi Button Row
Praktikum ini membuat layout Flutter menggunakan ListView yang terdiri dari gambar, judul, tombol, dan teks deskripsi. Judul menampilkan nama tempat, lokasi, ikon bintang, dan rating. Tombol CALL, ROUTE, dan SHARE dibuat menggunakan metode _buildButtonColumn agar ikon di atas teks memiliki tata letak dan warna konsisten. Teks deskripsi diberi padding agar rapi. Metode _buildButtonColumn mempermudah pembuatan tombol tanpa mengulang kode dan menjaga tampilan responsif.
![button](image-6.png)
buttonSection adalah baris (Row) yang berisi tiga kolom tombol. Setiap kolom dibangun menggunakan fungsi _buildButtonColumn yang menerima parameter warna, ikon, dan teks. Teks diletakkan di dalam Container dengan margin atas agar terpisah dari ikon. Kolom-kolom ini sejajar dengan MainAxisAlignment.spaceEvenly sehingga jarak antar tombol dan tepi baris merata.
![alt text](image-7.png)
Menambahkan button section ke body
![button section](image-8.png)

# Praktikum 3 Implementasi Text Section
Membuat widget text section
![text](image-9.png)
Menambahkan variabel text section ke body
![alt text](image-10.png)

# Praktikum 4 Implementasi Image Section

Membuat folder assets untuk gambar
![alt text](image-11.png)
Menambahkan asset gambar ke body
![img](image-12.png)
Pada langkah terakhir ini, atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.
![listview](image-13.png)




