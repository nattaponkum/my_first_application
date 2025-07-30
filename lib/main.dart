import 'package:flutter/material.dart'; // Import ไลบรารี Material ของ Flutter
import 'package:google_fonts/google_fonts.dart';

void main() {
  // จุดเริ่มต้นของแอป Flutter
  runApp(const MyApp()); // บอก Flutter ว่าวิดเจ็ตใดคือรากฐานของแอป
}

// MyApp โดยทั่วไปคือวิดเจ็ตรากฐานของแอปพลิเคชันของคุณ
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
      title: 'My Awesome App',
      debugShowCheckedModeBanner: false, // ซ่อนแบนเนอร์ debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
      home: const MyHomePage(), // วิดเจ็ตหน้าจอหลักของคุณ
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ให้โครงสร้างแอปพื้นฐาน
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue, // ปรับแต่งสี AppBar
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Item 1',
            style: TextStyle(
              fontFamily: 'BitCountGridSingle',
              fontSize: 50.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0), // สร้างพื้นที่ว่างแนวตั้ง 20 พิกเซล
          Text(
            'Item 2',
            style: GoogleFonts.lato(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 20.0), // ช่องว่างอีก 20 พิกเซล
          const Text('Item 3'),
        ],
      ),
    );
  }
}
