## **TUGAS PRAKTIKUM**

1. Jelaskan yang dimaksud Functions dalam bahasa Dart!

    **Jawab:** Function adalah sekumpulan instruksi yang dapat dipanggil untuk melakukan operasi tertentu. Function dapat menerima input dalam bentuk parameter dan dapat mengembalikan output. Function membantu dalam mengorganisir dan mengurangi pengulangan kode. Jika dibutuhkan tinggal memanggil nama function disertai parameter yang dibutuhkan.

2. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

    **Jawab:** 
        
    - **Parameter named** adalah parameter yang dapat diberikan dengan nama saat memanggil fungsi. Contoh sintaks:

    ```dart
    void greet({String name, int age = 10}) {
    print('Hello, $name! You are $age years old.');
    }

    greet(name: 'Silfi', age: 20);
    ```

    - **Parameter position** adalah parameter posisi adalah parameter yang harus diberikan saat memanggil fungsi, dan urutannya harus sesuai dengan definisi fungsi. Urutan sangat penting disini. Berikut contoh sintaksnya:

    ```dart
    void greet(String name, int age) {
    print('Hello, my name is $name and I am $age years old.');
    }

    void main() {
    greet('Silfi', 20); // Memanggil fungsi dengan parameter posisi
    }
    ```

    - **Parameter Default** adalah parameter yang memiliki nilai bawaan. Jika saat pemanggilan fungsi tidak ada argumen yang diberikan untuk parameter tersebut, nilai default akan digunakan. Ini memungkinkan fleksibilitas dalam penggunaan fungsi tanpa mengharuskan pengguna untuk selalu memberikan semua argumen. Contoh sintaks:

    ```dart
    void greet(String name, [int age = 18]) {
    print('Hello, my name is $name and I am $age years old.');
    }

    void main() {
    greet('Silfi'); // Memanggil fungsi tanpa parameter age, akan menggunakan nilai default
    greet('Nazarina', 22); // Memanggil fungsi dengan kedua parameter
    }
    ```

3. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

    **Jawab:** Dalam Dart, fungsi dianggap sebagai first-class objects, yang berarti bahwa fungsi diperlakukan sebagai nilai yang dapat digunakan di berbagai konteks. Selain itu penjelasan lainnya adalah:

    - Dapat Disimpan dalam Variabel: Fungsi dapat disimpan dalam variabel, sehingga memungkinkan kita untuk menggunakan fungsi tersebut melalui variabel.

    - Dapat Diteruskan sebagai Argumen: Fungsi dapat diteruskan sebagai argumen ke fungsi lain. Ini sering digunakan dalam callback atau sebagai parameter untuk fungsi yang lebih tinggi.

    - Dapat Dikembalikan dari Fungsi: Fungsi dapat dikembalikan sebagai hasil dari fungsi lain, memungkinkan pembuatan fungsi yang dinamis dan fleksibel.

    - Dapat Didefinisikan di Dalam Fungsi Lain: Fungsi dapat didefinisikan di dalam fungsi lain, yang memungkinkan pembuatan fungsi bersarang.

    Dengan memperlakukan fungsi sebagai first-class objects, Dart memungkinkan tingkat fleksibilitas yang lebih tinggi dalam pengembangan perangkat lunak. Hal ini memudahkan penggunaan fungsi dalam berbagai konteks, meningkatkan modularitas, dan mendukung pemrograman fungsional.

4. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

    Jawab: Anonymous functions, atau sering disebut sebagai fungsi anonim, adalah fungsi yang tidak memiliki nama. Fungsi ini biasanya didefinisikan di tempat yang sama di mana mereka akan digunakan dan sering digunakan untuk callback, fungsi pemetaan, atau fungsi yang hanya perlu digunakan sekali. Fungsi anonim menyerupai fungsi bernama karena memiliki: Nol atau lebih parameter, dipisahkan dengan koma Anotasi tipe opsional antara induk.

    ```dart
    void main() {
    // Daftar angka
    var numbers = [1, 2, 3, 4, 5];

    // Menggunakan anonymous function dengan metode forEach
    numbers.forEach((number) {
        print(number * 2); // Mengalikan setiap angka dengan 2
    });
    }
    ```

5. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

    Jawab: 
    
    - **Lexical scope** mengacu pada cakupan variabel yang ditentukan oleh lokasi fungsi dituliskan dalam kode. Artinya, variabel yang dideklarasikan di dalam suatu blok atau fungsi hanya dapat diakses di dalam blok tersebut dan di dalam fungsi yang berada di dalam blok itu.

    Contoh:
    ```dart
    void main() {
    var globalVar = 'Global'; // Variabel global

    void outerFunction() {
        var outerVar = 'Outer'; // Variabel lokal outerFunction

        void innerFunction() {
        print(globalVar);  // Akses ke variabel global
        print(outerVar);   // Akses ke variabel dari outerFunction
        }

        innerFunction();
    }

    outerFunction();
    }
    ```

    - **Lexical closures** adalah fungsi yang "menangkap" variabel dari lingkungannya ketika fungsi tersebut didefinisikan. Ini berarti bahwa fungsi tersebut dapat mengingat dan mengakses variabel-variabel tersebut bahkan setelah fungsi tersebut dipanggil di luar cakupannya.

    Contoh:

    ```dart
    Function createCounter() {
    var count = 0; // Variabel lokal

        return () {
            count++; // Menambah nilai count
            return count; // Mengembalikan nilai count yang terbaru
        };
    }

    void main() {
    var counter = createCounter(); // Membuat fungsi counter

    print(counter()); // Output: 1
    print(counter()); // Output: 2
    print(counter()); // Output: 3
    }
    ```

    Perbedaan:
    - Lexical Scope: Merujuk pada lokasi variabel dan di mana variabel tersebut dapat diakses. Ini berfokus pada hierarki cakupan.
    - Lexical Closures: Merujuk pada kemampuan fungsi untuk mengingat dan mengakses variabel dari lingkungannya setelah fungsi tersebut didefinisikan. Ini berfokus pada perilaku fungsi dan bagaimana ia dapat mengingat nilai-nilai dari cakupan saat ia dibuat.

6. Jelaskan dengan contoh cara membuat return multiple value di Functions!

    Jawab: fungsi yang mengembalikan beberapa nilai dengan menggunakan tipe data seperti List, Map, atau dengan menggunakan tuples (yang sebenarnya merupakan record dalam Dart). Salah satu contohnya adalah:

    ```dart
    (int, int) calculate(int a, int b) {
        return (a + b, a - b); // Mengembalikan dua nilai
    }

    void main() {
        var results = calculate(10, 5); // Memanggil fungsi
        print('Jumlah: ${results.$1}'); // Output: Jumlah: 15
        print('Selisih: ${results.$2}'); // Output: Selisih: 5
    }
    ```

    Untuk membuat fungsi tersebut deklarasikan fungsi dengan tipe pengembalian berupa record (contoh: (int, int)) yang mencakup tipe data dari nilai yang akan dikembalikan. Dalam fungsi, lakukan perhitungan yang diinginkan (seperti penjumlahan dan pengurangan), dan gunakan return untuk mengembalikan hasilnya dalam bentuk record. Di dalam fungsi main, panggil fungsi tersebut dan simpan hasilnya dalam variabel, kemudian akses setiap nilai menggunakan notasi $1, $2, dan seterusnya, sesuai urutan nilai yang dikembalikan.    

