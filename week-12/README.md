# Praktikum Minggu ke 12 - Pemrograman Asynchronous

## Praktikum 1 - Mengunduh Data dari Web Service (API)

## Soal 1
### Tambahkan **nama panggilan Anda** pada `title` app sebagai identitas hasil pekerjaan Anda.
### Jawab:

![images](./docs/soal%201.jpg)

## Soal 2
### Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.
### Jawab:
![images](./docs/1.jpg)
### Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W12: Soal 2".
### Jawab:
![images](./docs/2.jpg)
![images](./docs/commit1.png)

## Soal 3
### Jelaskan maksud kode langkah 5 tersebut terkait `substring` dan `catchError`!
### Jawab:
### 1. substring
Metode substring digunakan pada objek String untuk mengambil potongan dari string tersebut. `substring(0, 450)` digunakan untuk mengambil karakter dari indeks 0 hingga indeks 449 dari string tersebut atau hanya mengambil 450 karakter dari respon HTTP yang didapatkan. 
### 2. catchError
Metode `catchError` digunakan dalam konteks Future (keluaran dari fungsi `getData()`). Jika Future menghasilkan error, maka blok kode dalam `catchError` akan dijalankan. Dalam hal ini, jika terjadi kesalahan selama pemanggilan `getData()`, blok kode `result = 'An error occurred'; setState(() {});` akan dieksekusi. Ini akan menetapkan string "An error occurred" ke variabel `result` dan kemudian memicu pembaruan ke tampilan melalui `setState`.
### Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".
### Jawab:
![images](./docs/result_1.gif)
![images](./docs/commit%202.jpg)

## Praktikum 2: Menggunakan await/async untuk menghindari callbacks

### Soal 4
### Jelaskan maksud kode langkah 1 dan 2 tersebut!
### Jawab:
- `returnOneAsync()`, `returnTwoAsync()`, `returnThreeAsync()`: Tiga fungsi ini masing-masing mengembalikan objek Future dengan tipe data int. Setiap fungsi menunggu selama 3 detik menggunakan await `Future.delayed(const Duration(seconds: 3));` sebelum mengembalikan nilai tertentu (1, 2, atau 3).
- count(): Fungsi count merupakan sebuah fungsi Future yang juga menggunakan kata kunci `async`. Di dalamnya, ada variabel lokal total yang diinisialisasi dengan nilai 0. Kemudian, fungsi `returnOneAsync()` dipanggil dengan menggunakan `await`, yang berarti eksekusi fungsi ini akan ditunda hingga hasilnya siap. Nilai yang dikembalikan dari `returnOneAsync()` ditambahkan ke variabel total. Proses yang sama dilakukan untuk `returnTwoAsync()` dan `returnThreeAsync()`. Setelah semuanya selesai, nilai total diubah menjadi string dan disimpan di variabel result. Terakhir, fungsi `setState` dipanggil. Ini biasanya digunakan dalam Flutter untuk memberi tahu framework bahwa ada perubahan dalam state dan perlu memperbarui tampilan.
### Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 4".
### Jawab:
![images](./docs/result_2.gif)

## Praktikum 3: Menggunakan Completer di Future
