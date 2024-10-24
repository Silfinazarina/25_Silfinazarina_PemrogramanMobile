# **SILFI NAZARINA / TI-3G / 25**

# **Praktikum Menerapkan Plugin di Project Flutter**

### **Langkah 1: Buat project baru**

Buatlah sebuah project flutter baru dengan nama flutter_plugin_pubdev.

<img src="img/01.png">

### **Langkah 2: Menambahkan Plugin**

Tambahkan plugin auto_size_text di terminal. Jika berhasil, maka akan tampil nama plugin beserta versinya di file pubspec.yaml pada bagian dependencies.

<img src="img/02.png">

### **Langkah 3: Buat file red_text_widget.dart**

Buat file baru bernama red_text_widget.dart di dalam folder lib lalu isi kode seperti berikut.

<img src="img/03.png">

### **Langkah 4: Tambah Widget AutoSizeText**

Masih di file red_text_widget.dart, untuk menggunakan plugin auto_size_text, ubahlah kode return Container() menjadi seperti berikut.

<img src="img/04.png">

Terjadi error pada variabel text, karena sebelumnya variabel teks belum dideklarasikan.

### **Langkah 5: Buat Variabel text dan parameter di constructor**

Tambahkan variabel text dan parameter di constructor seperti berikut.

<img src="img/05.png">

### **Langkah 6: Tambahkan widget di main.dart**

Buka file main.dart lalu tambahkan di dalam children: pada class _MyHomePageState

<img src="img/06.png">

Run aplikasi tersebut dengan tekan F5, output:

<img src="img/07.png">


## **Tugas Praktikum**

1. Selesaikan Praktikum tersebut, lalu dokumentasikan dan push ke repository Anda berupa screenshot hasil pekerjaan beserta penjelasannya di file README.md!

    **Jawab**: Hasil praktikum sudah laporkan pada langkah [praktikum](#praktikum-menerapkan-plugin-di-project-flutter)! diatas 

2. Jelaskan maksud dari langkah 2 pada praktikum tersebut!

    **Jawab**: Langkah ini bertujuan untuk menambahkan plugin **auto_size_text** ke proyek Flutter. Plugin ini berfungsi untuk menyesuaikan ukuran teks secara otomatis sehingga sesuai dengan ruang yang tersedia di layar, tanpa harus memotong teks atau mengatur ukuran teks secara manual. Dengan menjalankan perintah `flutter pub add auto_size_text` di terminal, plugin tersebut akan ditambahkan ke bagian dependencies di file `pubspec.yaml`.

3. Jelaskan maksud dari langkah 5 pada praktikum tersebut!

    **Jawab**: Langkah ini bertujuan untuk membuat variabel text dan mendefinisikan parameter pada constructor di dalam sebuah widget khusus, yaitu RedTextWidget. Variabel text bertipe String akan menyimpan data teks yang akan ditampilkan oleh widget.

    Pada constructor RedTextWidget, ditambahkan parameter required this.text, yang menandakan bahwa saat widget ini digunakan, nilai text harus diberikan. Hal ini memastikan bahwa teks yang akan ditampilkan oleh widget RedTextWidget selalu ada saat widget tersebut dibuat. Selain itu, penggunaan super(key: key) memungkinkan pengelolaan kunci (key) untuk identifikasi widget dalam hirarki widget pada Flutter.

4. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!

    Jawab: 
    
    - Container Pertama (RedTextWidget): Menampilkan teks dari custom widget RedTextWidget dengan latar belakang kuning dan lebar 50 piksel.

    - Container Kedua (Text): Menampilkan teks menggunakan widget Text bawaan Flutter dengan latar belakang hijau dan lebar 100 piksel.

    Perbedaan antara keduanya dapat dilihat dari beberapa aspek antara lain:

    - Widget Teks: Container pertama menggunakan RedTextWidget, sebuah widget custom yang kemungkinan memiliki tampilan atau fungsionalitas khusus, sedangkan container kedua menggunakan widget bawaan Text dari Flutter, yang menampilkan teks dengan perilaku standar.

    - Lebar Container: Container pertama memiliki lebar lebih kecil (50 piksel), sehingga teks mungkin lebih cepat terpotong, sementara container kedua lebih lebar (100 piksel), memberikan lebih banyak ruang untuk teks tampil lebih lengkap.

    - Latar Belakang: Container pertama memiliki latar belakang kuning, sedangkan yang kedua hijau, yang memberikan perbedaan visual tetapi tidak memengaruhi fungsi teks.

5. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !

    Jawab: Berikut adalah penjelasan mengenai parameter yang ada dalam plugin auto_size_text:

    - key: Kunci untuk menggantikan widget lain dalam pohon widget.
    - textKey: Kunci untuk widget Text yang dihasilkan.
    - style: Gaya teks yang digunakan.
    - minFontSize: Ukuran font minimum saat penyesuaian ukuran teks, diabaikan jika presetFontSizes diatur.
    - maxFontSize: Ukuran font maksimum untuk penyesuaian ukuran teks, diabaikan jika presetFontSizes diatur.
    - stepGranularity: Langkah pengurangan ukuran font saat menyesuaikan ukuran.
    - presetFontSizes: Daftar ukuran font yang diperbolehkan, harus dalam urutan menurun.
    - group: Mengelompokkan beberapa AutoSizeText agar memiliki ukuran yang sama.
    - textAlign: Pengaturan perataan teks secara horizontal.
    - textDirection: Arah teks yang menentukan interpretasi nilai perataan.
    - locale: Memilih font yang tepat berdasarkan karakter Unicode.
    - softWrap: Menentukan apakah teks dapat dipotong pada pemisah baris.
    - wrapWords: Menentukan apakah kata yang tidak muat akan dibungkus.
    - overflow: Menentukan bagaimana menangani overflow visual.
    - overflowReplacement: Widget yang ditampilkan jika teks tidak muat.
    - textScaleFactor: Faktor skala font untuk mempengaruhi ukuran font.
    - maxLines: Jumlah maksimum baris untuk teks.
    - semanticsLabel: Label alternatif untuk aksesibilitas.



