import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quizd4mi/main.dart'; // Pastikan untuk mengganti dengan path yang sesuai ke file utama

void main() {
  testWidgets('First Page and Second Page navigation test', (WidgetTester tester) async {
    // Membangun aplikasi dan memicu frame pertama
    await tester.pumpWidget(const QuizApp());

    // Verifikasi apakah teks yang sesuai ada pada halaman pertama
    expect(find.text('ERROR: Quiz is not finished yet, do it now.'), findsOneWidget);
    expect(find.text('Challenge detected: Are you ready to prove your solving skills?Solve it now!'), findsOneWidget);
    expect(find.text('For more information visit on: d4manajemeninformatika.com'), findsOneWidget);

    // Memastikan tombol "Start Quiz" muncul pada halaman pertama
    expect(find.text('Start Quiz'), findsOneWidget);

    // Menekan tombol "Start Quiz" untuk navigasi ke halaman kedua
    await tester.tap(find.text('Start Quiz'));
    await tester.pumpAndSettle(); // Tunggu hingga transisi halaman selesai

    // Verifikasi apakah halaman kedua ditampilkan
    expect(find.text('Quiz Page'), findsOneWidget);

    // Verifikasi gambar muncul di halaman kedua (jika ada gambar yang dipasang pada path yang benar)
    expect(find.byType(Image), findsOneWidget);

    // Verifikasi apakah gambar yang ditampilkan sesuai
    expect(find.byWidgetPredicate((widget) =>
    widget is Image &&
        widget.image is AssetImage &&
        (widget.image as AssetImage).assetName == 'assets/images/mi.png'), findsOneWidget);
  });
}
