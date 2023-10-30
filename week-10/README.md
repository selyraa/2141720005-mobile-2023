# Praktikum Minggu ke 10 - Manajemen Plugin

## File red_text_widget.dart
```dart
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RedTextWidget extends StatelessWidget {
  final String text;

  const RedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
```

## File main.dart
```dart
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pubdev/widgets/red_text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.yellowAccent,
              width: 50,
              child: const RedTextWidget(
                text: 'You have pushed the button this many times:',
              ),
            ),
            Container(
              color: Colors.greenAccent,
              width: 100,
              child: const Text(
                'You have pushed the button this many times:',
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
```

## Hasil Running
![Alt text](image.png)

# Tugas Praktikum
#### 1. Selesaikan Praktikum tersebut, lalu dokumentasikan dan push ke repository Anda berupa screenshot hasil pekerjaan beserta penjelasannya di file README.md! 

Jawab: Done

#### 2. Jelaskan maksud dari langkah 2 pada praktikum tersebut!

Jawab: 
Langkah tersebut akan menambahkan dependensi auto_size_text ke dalam proyek yang sedang kita kembangkan. Perintah ```flutter pub add``` digunakan untuk menambahkan dependensi atau plugin ke proyek yang sedang kita kembangkan. Ketika menjalankan perintah ```flutter pub add auto_size_text``` di terminal, Flutter akan secara otomatis men-download dan mengintegrasikan plugin auto_size_text ke dalam proyek kita.

#### 3. Jelaskan maksud dari langkah 5 pada praktikum tersebut!

Jawab:
```final String text;``` adalah deklarasi variabel untuk menyimpan teks yang akan ditampilkan dalam widget. Kemudian konstruktor ```RedTextWidget``` akan menerima parameter key dan text. Parameter key adalah adalah key yang digunakan untuk mengidentifikasi instance dari widget ini. Sedangkan parameter text adalah teks yang akan ditampilkan dalam widget RedTextWidget. Teks ini diberi label required, yang berarti Anda wajib memberikan nilai text saat membuat instance RedTextWidget. Nilai text ini akan digunakan untuk menampilkan teks dalam widget.

#### 4. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!

Jawab:
Widget pertama adalah Container yang mengandung instance dari widget RedTextWidget, yang digunakan untuk menampilkan teks dengan warna merah dan penyesuaian ukuran teks otomatis.Dalam Container ini, latar belakangnya diatur menjadi warna kuning (Colors.yellowAccent) dan lebarnya menjadi 50 piksel.

Widget kedua adalah juga merupakan Container, tetapi child-nya adalah instance dari widget Text. Dalam Container ini, latar belakangnya diatur menjadi warna hijau (Colors.greenAccent) dan lebarnya menjadi 100 piksel.

Perbedaan: kedua widget tersebut berbeda pada pengaturan teks yang akan ditampilkan. Widget pertama memiliki pengaturan kustom, seperti style, maxline, dan overflow. Sedangkan widget kedua tidak diatur secara eksplisit, sehingga akan menghasilkan tampilan default dari widget Text().

#### 5. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi [ini](https://pub.dev/documentation/auto_size_text/latest/) !

Jawab:
- parameter text adalah teks yang akan ditampilkan dalam widget AutoSizeText. Ini adalah teks yang akan diukur dan diatur ukuran fontnya secara otomatis oleh AutoSizeText.
- parameter style adalah adalah properti yang digunakan untuk mengatur gaya teks, seperti warna dan ukuran font. Dalam kasus ini, warna teks diatur sebagai merah (red) dan ukuran font diatur sebagai 14.
- parameter maxLines jumlah baris maksimum opsional untuk merentangkan teks. Dalam kode tersebut, maxLines diatur sebagai 2, yang berarti teks akan ditampilkan dalam maksimal 2 baris. Jika teks melebihi 2 baris, maka teks akan terpotong dan ditandai dengan elipsis (tanda ...).
- parameter overflow akan mengontrol perilaku teks ketika melebihi jumlah baris yang telah ditetapkan pada parameter maxLine. Jika teks melebihi jumlah maksimum baris yang diatur, overflow menentukan bagaimana teks yang tidak muat akan ditampilkan. Misalnya, jika telah diatur TextOverflow.ellipsis, maka teks yang tidak muat akan muncul dengan elipsis (tanda ...) di akhir teks.