# Jawaban soal no 2 dan 3

2. Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!

    **Jawab:** Karena dart adalah bahasa yang digunakan dalam pengembangan program menggunakan framework flutter. Dengan ini dart merupakan dasar dari flutter. Penting untuk memahami bahasa dart, agar bisa membangun sebuah program dengan baik. Juga, menurut informmasi yang saya dapatkan semua pengembangan framework flutter melibatkan pengetahuan/fitur mendalam dengan bahasa Dart mulai dari Kode aplikasi, kode plugin, dan manajemen dependensi semuanya menggunakan bahasa Dart beserta fitur-fiturnya. Memiliki pemahaman dasar yang kuat tentang Dart akan memudahkan dalam pengoperasian flutter.

3. Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.

    **Jawab:** 

### INTRODUCE DART IN FLUTTER

1. **Tentang Dart**

    - Bahasa Dart adalah inti dari framework Flutter. 
    
    - Semua pengembangan framework Flutter melibatkan pengetahuan/fitur mendalam dengan bahasa Dart dari kode aplikasi, kode plugin, dan manajemen dependensi semuanya menggunakan bahasa Dart beserta fitur-fiturnya.

    **Kenapa Flutter menggunakan Bahasa Dart?**
    
    Karena Dart mendukung lintas platform, dan memiliki tujuan umum dengan terus meningkatkan fitur-fiturnya, membuatnya lebih kekinian dan fleksibel.

2. **Memulai dengan Dart**

    Dart bertujuan untuk menggabungkan kelebihan-kelebihan beberapa bahasa pemrograman dengan fitur-fitur bahasa pemrograman terkini antara lain: 

    - **Productive tooling (Peralatan/tool yang produktif)**: fitur tool untuk menganalisis kode, plugin IDE, dan ekosistem paket yang besar.
    - **Garbage collection (Pengelolaan memori)**: sistem yang otomatis membersihkan memori dari objek-objek yang tidak lagi digunakan.
    - **Type annotations (Anotasi tipe, (opsional))**: digunakan untuk memperjelas tipe data yang digunakan dan membantu mencegah kesalahan, menjaga konsistensi dan keamanan. 
    - **Staticaly Type** : mendeteksi tipe data variabel saat kompilasi melalui: 
    
        - **Type-safe**: memastikan bahwa setiap variabel digunakan sesuai tipe datanya
        - **Type Inference**: Jika tipe data tidak ditulis, Dart akan secara otomatis menebak tipe data dari nilai yang diberikan pada variabel.

    - **Portability**: memungkinkan pengembangan aplikasi yang dapat dijalankan di berbagai perangkat keras, baik untuk web maupun aplikasi desktop dan mobile.

3. **Evolusi Dart**

    - Diluncurkan tahun 2011 -> rilis versi stabil 2013 ->rilis Dart 2.0 akhir 2018

    - Fokus pada pengembangan web dengan tujuan Utama menggantikan javascript menjadi focus pada mobile development termasuk Flutter
    
    - Dart ingin menjadi penerus JavaScript dengan mencoba memecahkan masalah di JavaScript

    - Dart menawarkan alat modern dan stabil yang dirancang untuk performa optimal pada proyek besar, sambil tetap menjaga nuansa Bahasa yang dinamis.

    - Dibentuk agar kuat dan fleksibel

4. **Cara Kerja Dart**

    Kode Dart dapat berjalan di lingkungan yang mendukung Dart, dengan fitur:

    -   **Runtime Systems**: Menyediakan infrastruktur untuk mengeksekusi kode Dart dengan pengelolaan memori, penjadwalan tugas, dan dukungan fitur bahasa.

    -   **Dart Core Libraries**: Menyediakan sekumpulan perpustakaan bawaan yang menawarkan fungsi dasar dan utilitas untuk pengembangan aplikasi.

    -   **Garbage Collectors**: Mengelola memori secara otomatis dengan menghapus objek yang tidak lagi digunakan

    Dart bisa dieksekusi dengan dua cara yaitu dengan Dart Virtual Machines (VMs) atau JavaScript Compilation. Eksekusi kode Dart dapat beroperasi dalam dua mode:
    
    - **Kompilasi Just-In-Time (JIT)**: Kode Dart dikompilasi saat dibutuhkan. Digunakan untuk pengembangan, mendukung fitur seperti debugging dan hot reload.

    - **Kompilasi Ahead-Of-Time (AOT)**: Mengkompilasi kode Dart menjadi kode mesin sebelum runtime untuk performa yang lebih baik namun tidak mendukung debugging dan hot reload.

        Hot Reload:
        - Fitur utama dari Flutter yang didukung oleh Dart JIT.
        - Memungkinkan pengembang melihat perubahan kode dengan cepat.
        - Mendukung pengembangan perangkat lunak yang lebih cepat dan berkualitas tinggi.

5. **Struktur Bahasa Dart**

    #### Object orientation

    - Dart adalah bahasa pemrograman yang mengikuti paradigma pemrograman berorientasi objek (OOP). 
    - Dalam OOP, objek adalah entitas yang menyimpan data (fields) dan kode (methods). 
    - Objek-objek ini dibuat dari class, yang bertindak sebagai cetak biru untuk mendefinisikan struktur dan perilaku objek.

        Fitur utama OOP dalam Dart meliputi:

        - **Encapsulation**: Menyembunyikan detail implementasi internal objek dan hanya menyediakan akses melalui metode yang ditentukan.

        - **Inheritance**: Memungkinkan suatu class untuk mewarisi atribut dan metode dari class lain.

        - **Composition**: Menggabungkan objek-objek lain untuk membentuk objek yang lebih kompleks.

        - **Abstraction**: Menyederhanakan antarmuka objek dengan menyembunyikan kompleksitas implementasi.

        - **Polymorphism**: Memungkinkan objek untuk diinterpretasikan sebagai instansi dari class lain dalam hierarki.

    #### Dart operators

    - Setiap kali kita menggunakan operator di Dart, kita sebenarnya sedang memanggil sebuah metode yang tersembunyi di balik operator tersebut.

        **Contohnya**: ketika kita menulis x == y, Dart memanggil metode == untuk membandingkan apakah x sama dengan y.

    #### Arithmetic operators

    Dart menyediakan berbagai operator yang umum digunakan dalam pemrograman, seperti:

    - Operator Aritmatika Dasar:

        - **+** : Penjumlahan (berlaku untuk angka dan string)
        - **-** : Pengurangan
        - (*) : Perkalian
        - **/** : Pembagian (hasilnya selalu double)
        - **~/** : Pembagian bilangan bulat (hasilnya bilangan bulat)
        - **%** : Modulus (sisa bagi)
        - **-expression** untuk negasi (membalikkan nilai)

    - Operator Penggabungan:

        - operator **+** selain untuk penjumlahan, juga digunakan untuk menggabungkan string.

    - Operator Penugasan Gabungan:
    
        - **+=**, **-=**, ***=**, **/=**, **~/=**: Menggabungkan operasi aritmatika dengan penugasan. **Contoh**: x += 5 sama dengan x = x + 5.

    #### Increment and decrement operators

    - Increment:
        - **++var** atau **var++** : Menambah nilai variabel var sebesar 1.
    - Decrement:
        - **--var** atau **var--** : Mengurangi nilai variabel var sebesar 1.

    Diterapkan untuk operasi perhitungan pada perulangan.

    #### Equality and relational operators

    - Operator Persamaan:

        - **==** untuk memeriksa apakah dua operan memiliki nilai yang sama (membandingkan isi, bukan referensi).
        - **!=** untuk memeriksa apakah dua operan memiliki nilai yang berbeda.

    - Operator Relasional:

        - **>** memeriksa apakah operan kiri lebih besar dari operan kanan.
        - **<** memeriksa apakah operan kiri lebih kecil dari operan kanan.
        - **>=** memeriksa apakah operan kiri lebih besar dari atau sama dengan operan kanan.
        - **<=** memeriksa apakah operan kiri kurang dari atau sama dengan operan kanan.

    - Perbedaan dari Bahasa Lain:

        - Operator **==** di Dart membandingkan nilai, bukan referensi memori.
        - Tidak ada operator **===** di Dart karena Dart sudah memiliki fitur type safety yang memastikan bahwa == hanya membandingkan objek dengan tipe yang sama.

    #### Logical operators

    Di Dart, operator logika digunakan untuk bekerja dengan nilai boolean (bool) dan memungkinkan penggabungan serta evaluasi ekspresi kompleks. Operator logika yang tersedia adalah:

    - **!expression** negasi atau kebalikan hasil ekspresi—yaitu, **true** menjadi **false** dan **false** menjadi **true**.
    - **||** menerapkan operasi logika **OR** antara dua ekspresi.
    - **&&** menerapkan operasi logika **AND** antara dua ekspresi.

6. **Pelatihan Dart**

    - **DartPad** : Ini adalah kakas online yang bagus untuk belajar dan bereksperimen dengan fitur bahasa Dart. Kakas ini mendukung core library Dart, kecuali untuk library VM seperti dart:io.

    - **Running locally** : untuk menjalankan kode tersebut secara lokal di PC/Laptop Anda, simpan kode ke file Dart dan eksekusi dengan Dart di terminal.

        Misal: **hello_world.dart** kemudian buka terminal dan jalankan perintah: **dart hello_world.dart**

    - **Main Function** : Di Dart, fungsi (function) dan metode (method) digunakan untuk memisahkan kode. Struktur dasar fungsi main dalam Dart adalah sebagai berikut:

        - Tipe Data Kembali: void menunjukkan bahwa fungsi tidak mengembalikan nilai.
        - Nama Fungsi: main adalah nama fungsi utama yang dijalankan oleh Dart VM untuk memulai eksekusi kode.
        - Parameter: Tanda kurung kosong () menunjukkan bahwa fungsi ini tidak menerima parameter.
        - Blok Kode: Kurung kurawal {} menentukan awal dan akhir dari blok kode fungsi.

        Fungsi main adalah titik masuk aplikasi Dart dan harus ada di setiap aplikasi Dart.

    
            Function vs Method

                - Function: Berada di luar class dan tidak   
                terkait dengan instance class. Contoh: main 
                adalah sebuah function.

                - Method: Terikat pada class dan memiliki 
                referensi implisit ke instance class melalui 
                keyword this.
                
        Function dan method sering digunakan secara bergantian, tetapi perbedaannya terletak pada konteks dan keterikatannya dengan class.

        Jadi, kode dapat dieksekusi karena Dart VM mencari function main, yang kemudian memanggil function tersebut.

    


