import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(), // Menampilkan halaman pertama saat aplikasi dimulai
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87, // Latar belakang hitam
      body: Stack(
        children: [
          // Teks kesalahan di bagian atas
          Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Column(
              children: const [
                Text(
                  'ERROR: Quiz is not finished yet, do it now.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontFamily: 'monospace', // Menggunakan font monospace
                  ),
                ),
                Text(
                  'Challenge detected: Are you ready to prove your solving skills?'
                      'Solve it now!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontFamily: 'monospace', // Menggunakan font monospace
                  ),
                ),
                Text(
                  ' ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontFamily: 'monospace', // Menggunakan font monospace
                  ),
                ),
                Text(
                  'For more information visit on: d4manajemeninformatika.com',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontFamily: 'monospace', // Menggunakan font monospace
                  ),
                ),
              ],
            ),
          ),

          // Tombol Mulai Quiz di bagian bawah
          Positioned(
            bottom: 50, // Jarak dari bawah layar
            left: 50,
            right: 50,
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFF4CAF50), // Hijau palet yang konsisten
                borderRadius: BorderRadius.circular(5), // Sudut tombol dengan radius 5
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  // Navigasi ke halaman kedua dengan transisi animasi
                  Navigator.push(
                    context,
                    _createTransition(const SecondPage()),
                  );
                },
                child: const Text(
                  "Start Quiz",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'monospace', // Menggunakan font monospace
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Membuat transisi halaman kedua
  PageRouteBuilder _createTransition(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Efek geser dari kanan ke kiri
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // Daftar soal dan pilihan jawaban yang baru
  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'Apa yang dimaksud dengan perangkat keras (hardware)?',
      'answers': ['Software yang digunakan untuk sistem operasi', 'Semua perangkat fisik yang digunakan untuk komputer', 'Sistem yang menghubungkan perangkat elektronik', 'Program yang digunakan untuk memanage data'],
      'correctAnswer': 'Semua perangkat fisik yang digunakan untuk komputer',
    },
    {
      'questionText': 'Apa fungsi utama dari RAM dalam komputer?',
      'answers': ['Menyimpan data secara permanen', 'Menyimpan data sementara untuk memproses aplikasi', 'Menghubungkan perangkat keras dengan perangkat lunak', 'Menyediakan koneksi internet'],
      'correctAnswer': 'Menyimpan data sementara untuk memproses aplikasi',
    },
    {
      'questionText': 'Apa itu cloud computing?',
      'answers': ['Penyimpanan data di komputer lokal', 'Penyimpanan data di server yang dapat diakses melalui internet', 'Jaringan komputer yang menggunakan kabel', 'Sistem pengolahan data menggunakan perangkat keras khusus'],
      'correctAnswer': 'Penyimpanan data di server yang dapat diakses melalui internet',
    },
    {
      'questionText': 'Apa yang dimaksud dengan software antivirus?',
      'answers': ['Program untuk mendeteksi dan menghapus virus komputer', 'Perangkat keras untuk melindungi komputer', 'Aplikasi untuk mengelola dokumen', 'Jaringan yang digunakan untuk menghubungkan komputer'],
      'correctAnswer': 'Program untuk mendeteksi dan menghapus virus komputer',
    },
    {
      'questionText': 'Apa itu sistem operasi (Operating System)?',
      'answers': ['Perangkat lunak yang mengatur perangkat keras dan perangkat lunak lainnya', 'Program untuk mendeteksi virus', 'Aplikasi untuk membuat desain grafis', 'Jaringan untuk menghubungkan komputer ke internet'],
      'correctAnswer': 'Perangkat lunak yang mengatur perangkat keras dan perangkat lunak lainnya',
    },
    {
      'questionText': 'Apa yang dimaksud dengan URL (Uniform Resource Locator)?',
      'answers': ['Alamat IP yang digunakan untuk menghubungkan perangkat keras', 'Alamat dari sebuah situs web di internet', 'Sistem yang digunakan untuk menyimpan data di komputer', 'Protokol yang digunakan untuk pengiriman data'],
      'correctAnswer': 'Alamat dari sebuah situs web di internet',
    },
    {
      'questionText': 'Apa yang dimaksud dengan browser?',
      'answers': ['Aplikasi yang digunakan untuk menulis kode program', 'Aplikasi yang digunakan untuk menjelajah internet', 'Aplikasi yang digunakan untuk mengedit foto', 'Program yang digunakan untuk mengelola data'],
      'correctAnswer': 'Aplikasi yang digunakan untuk menjelajah internet',
    },
    {
      'questionText': 'Apa itu phishing?',
      'answers': ['Metode untuk meningkatkan kecepatan internet', 'Serangan yang mencoba mencuri informasi pribadi melalui email atau situs palsu', 'Proses untuk memperbaiki sistem operasi', 'Cara mengelola email di komputer'],
      'correctAnswer': 'Serangan yang mencoba mencuri informasi pribadi melalui email atau situs palsu',
    },
    {
      'questionText': 'Apa perbedaan antara LAN dan WAN?',
      'answers': ['LAN adalah jaringan lokal, WAN adalah jaringan yang lebih luas', 'LAN hanya digunakan untuk perangkat mobile, WAN hanya untuk desktop', 'LAN lebih cepat dari WAN karena menggunakan kabel fiber optik', 'WAN tidak memerlukan router, sedangkan LAN memerlukan'],
      'correctAnswer': 'LAN adalah jaringan lokal, WAN adalah jaringan yang lebih luas',
    },
    {
      'questionText': 'Apa yang dimaksud dengan password hashing?',
      'answers': ['Proses mengenkripsi data yang dikirimkan melalui internet', 'Proses mengubah password menjadi bentuk yang lebih aman untuk disimpan', 'Proses mempercepat pengolahan data dalam komputer', 'Proses menghapus password dari sistem'],
      'correctAnswer': 'Proses mengubah password menjadi bentuk yang lebih aman untuk disimpan',
    }
  ];

  int _questionIndex = 0; // Menyimpan index soal saat ini
  String? _selectedAnswer; // Menyimpan jawaban yang dipilih oleh pengguna
  int _score = 0; // Skor yang diperoleh pengguna
  late DateTime _startTime; // Waktu mulai pengerjaan quiz

  @override
  void initState() {
    super.initState();
    _startTime = DateTime.now(); // Mencatat waktu mulai saat halaman kedua dimuat
  }

  void _nextQuestion() {
    if (_selectedAnswer == (_questions[_questionIndex]['correctAnswer'] as String)) {
      _score++; // Menambahkan skor jika jawaban benar
    }

    setState(() {
      // Jika masih ada soal berikutnya, lanjutkan
      if (_questionIndex < _questions.length - 1) {
        _questionIndex++;
        _selectedAnswer = null; // Reset pilihan jawaban
      } else {
        // Jika sudah selesai, tampilkan hasil
        _showResultDialog();
      }
    });
  }

  void _showResultDialog() {
    DateTime _endTime = DateTime.now(); // Mencatat waktu selesai
    Duration _duration = _endTime.difference(_startTime); // Menghitung durasi waktu

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Ujian Selesai'),
        content: Text(
            'Skor Anda: $_score/${_questions.length}\nWaktu yang dihabiskan: ${_formatDuration(_duration)}'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5), // Sudut dialog dengan radius 5
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              // Menutup dialog dan kembali ke halaman pertama
              Navigator.of(ctx).pop();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const FirstPage()),
              );
            },
            child: const Text('Tutup'),
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    // Format durasi menjadi menit dan detik
    int minutes = duration.inMinutes;
    int seconds = duration.inSeconds % 60;
    return '$minutes menit $seconds detik';
  }

  @override
  Widget build(BuildContext context) {
    final question = _questions[_questionIndex];

    return Scaffold(
      backgroundColor: Colors.black, // Latar belakang hitam kosong
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Menampilkan soal dengan font monospace
              Text(
                question['questionText'] as String,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'monospace', // Menggunakan font monospace
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Menampilkan pilihan jawaban dengan padding dan jarak yang konsisten
              for (var answer in question['answers'] as List<String>)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        _selectedAnswer == answer
                            ? const Color(0xFF4CAF50) // Hijau yang konsisten
                            : const Color(0xFF1E88E5), // Biru laut untuk pilihan
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5), // Sudut radius 5 pada tombol
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedAnswer = answer;
                      });
                    },
                    child: Text(
                      answer,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black, // Warna teks jawaban hitam
                        fontFamily: 'monospace', // Menggunakan font monospace
                      ),
                    ),
                  ),
                ),

              const SizedBox(height: 20),

              // Tombol untuk lanjut ke soal berikutnya, nonaktifkan jika belum memilih jawaban
              ElevatedButton(
                onPressed: _selectedAnswer == null ? null : _nextQuestion, // Tombol hanya aktif jika jawaban dipilih
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Mengubah warna latar belakang tombol menjadi putih
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // Sudut radius 5 pada tombol
                  ),
                ),
                child: const Text(
                  'Lanjutkan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Mengubah warna teks tombol menjadi hitam agar kontras
                    fontFamily: 'monospace', // Menggunakan font monospace
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
