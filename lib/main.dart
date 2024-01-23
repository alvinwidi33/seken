import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seken/DaftarPage.dart';
import 'package:seken/MasukPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seken',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          ),
      home: const MyLoadingPage(title: 'Seken'),
    );
  }
}

class MyLoadingPage extends StatefulWidget {
  const MyLoadingPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyLoadingPage> createState() => _MyLoadingPageState();
}

class _MyLoadingPageState extends State<MyLoadingPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("images/baju.png"),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 320, // Set your desired height
              color: Color(0xFF093731), // Set your desired color
            ),
          ),
          Positioned(
            bottom: 270,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.25), // Set opacity to 25%
                    spreadRadius: 24.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset("images/logo.png"),
                ],
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 6 + 12,
            bottom: 180,
            child: Text(
              "Kata siapa pakaian bekas \n        tidak berkualitas?",
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w600,
                color: Color(0xFFDFECEA),
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 8 - 12,
            bottom: 160,
            child: Text(
              "Jelajahi dan temukan kemudahan dan kesenangannya!",
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w500,
                color: Color(0xFFDFECEA),
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            bottom: 80, // Adjust the bottom value as needed
            left: MediaQuery.of(context).size.width / 2 - 161,
            child: ElevatedButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MasukPage(),
                  ),
                );
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(322, 60)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF189877)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(color: Color(0xFFDFECEA), width: 1.6),
                ),
              ),
              child: Text(
                'Masuk',
                style: GoogleFonts.raleway(
                  fontSize: 20,
                  color: Color(0xFFDFECEA),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: MediaQuery.of(context).size.width / 3 - 24,
            child: Text(
              "Belum memiliki akun?",
              style: GoogleFonts.raleway(
                fontSize: 12,
                color: Color(0xFFDFECEA),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: MediaQuery.of(context).size.width / 2 + 44,
            child: InkWell(
              onTap: () {
                // Handle the click event here
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DaftarPage()),
                );
              },
              child: Text(
                "Daftar",
                style: GoogleFonts.raleway(
                  fontSize: 12,
                  color: Color(0xFFDFECEA),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
