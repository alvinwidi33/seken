import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seken/main.dart';
import 'package:seken/DaftarPage.dart';

class MasukPage extends StatefulWidget {
  @override
  _MasukPageState createState() => _MasukPageState();
}

class _MasukPageState extends State<MasukPage> {
  bool _isPasswordObscured = true;
  bool _isConfirmPasswordObscured = true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF093731),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Column(
              children: [
                Image.asset("images/logo masuk.png"),
              ],
            ),
          ),
          Positioned(
            top: 316,
            left: 40,
            child: Text(
              "Email",
              style: GoogleFonts.raleway(
                fontSize: 16,
                color: Color(0xFFDFECEA),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            top: 342,
            left: 40,
            right: 40,
            child: TextFormField(
              decoration: buildInputDecoration('Contoh: ayam.cinta@gmail.com'),
            ),
          ),
          Positioned(
            top: 416,
            left: 40,
            child: Text(
              "Kata Sandi",
              style: GoogleFonts.raleway(
                fontSize: 16,
                color: Color(0xFFDFECEA),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            top: 442,
            left: 40,
            right: 40,
            child: TextFormField(
              obscureText: _isPasswordObscured,
              decoration: buildInputDecorationWithSuffix(
                'Kata sandi',
                Icons.visibility,
                () {
                  setState(() {
                    _isPasswordObscured = !_isPasswordObscured;
                  });
                },
              ),
            ),
          ),
          Positioned(
            bottom: 154,
            left: MediaQuery.of(context).size.width / 2 - 156,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(312, 60)),
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
            bottom: 100,
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
            bottom: 100,
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
InputDecoration buildInputDecoration(String labelText) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: GoogleFonts.inter(
        color: Color(0xFF093731),
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
      ),
      fillColor: Color(0xFFDFECEA),
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(
          width: 3,
          color: Color(0xFF50B197),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(
          width: 3,
          color: Color(0xFF50B197),
        ),
      ),
    );
  }

  InputDecoration buildInputDecorationWithSuffix(
    String labelText,
    IconData suffixIcon,
    VoidCallback onPressed,
  ) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: GoogleFonts.inter(
        color: Color(0xFF093731),
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
      ),
      fillColor: Color(0xFFDFECEA),
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(
          width: 3,
          color: Color(0xFF50B197),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(
          width: 3,
          color: Color(0xFF50B197),
        ),
      ),
      suffixIcon: IconButton(
        icon: Icon(
          suffixIcon,
          color: Colors.grey,
        ),
        onPressed: onPressed,
      ),
    );
}

