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


# Praktikum 5 Membangun Navigasi di Flutter
Membuat projek baru flutter dengan nama belanja dan menyusun folder seperti berikut
![folder](image-14.png)

Membuat 2 buah file bernama home_page.dart dan item_page.dart dalam folder pages
Kemudian untuk masing-masing file, deklarasikan class HomePage pada file home_page.dart dan ItemPage pada item_page.dart. Turunkan class dari StatelessWidget. Gambaran potongan kode dapat anda lihat sebagai berikut
![home page](image-15.png)
![item page](image-16.png)

Setelah kedua halaman telah dibuat dan didefinisikan, bukalah file main.dart. Pada langkah ini anda akan mendefinisikan Route untuk kedua halaman tersebut. Definisi penamaan route harus bersifat unique. Halaman HomePage didefinisikan sebagai /. Dan halaman ItemPage didefinisikan sebagai /item. Untuk mendefinisikan halaman awal, anda dapat menggunakan named argument initialRoute
![main.dart](image-17.png)

Membuat proses pemodelan data dengan membuat file item.dart dan diletakkan pada folder models
![item](image-18.png)

Melengkapi kode di class home pages
![home pages](image-19.png)

Untuk menampilkan ListView pada praktikum ini digunakan itemBuilder. Data diambil dari definisi model yang telah dibuat sebelumnya. Untuk menunjukkan batas data satu dan berikutnya digunakan widget Card. Kode yang telah umum pada bagian ini tidak ditampilkan.
![homepages](image-20.png)

Tampilan setelah dijalankan 
![tampilan](image-21.png)

Menambahkan aksi pada ListView
Untuk menambahkan sentuhan, letakkan cursor pada widget pembuka Card. Kemudian gunakan shortcut quick fix dari VSCode (Ctrl + . pada Windows atau Cmd + . pada MacOS). Sorot menu wrap with widget... Ubah nilai widget menjadi InkWell serta tambahkan named argument onTap yang berisi fungsi untuk berpindah ke halaman ItemPage. 
![inkwell](image-22.png)

Dan seperti berikut hasilnya setelah dijalankan, saat di klik salah satu item di home page akan berpindah ke item page 
![itempages](image-23.png)

# Tugas Praktikum 2
Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator

![itempages](image-24.png)

Menambahkan atribut foto produk,stock, dan rating
yang pertama mengubah models item agar mencakup atribut baru 
![item](image-25.png)

Kemudian mengedit file pages untuk menambahkan data sesuai atribut baru 
![home](image-26.png)

pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.
Membuat file item_card.dart dan footer.dart pada folder widgets
![widgets](image-27.png)

Dan tampilan akhir seperti berikut 
![homepages](image-28.png)
![item](image-29.png)
![item](image-30.png)




