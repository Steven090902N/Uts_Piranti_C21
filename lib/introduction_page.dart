import 'package:flutter/material.dart';
import 'package:uts_application_piranti/Login.dart';

class IntroductionPage extends StatefulWidget {
  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // Menambahkan ini
            children: [
              SizedBox(height: 1),
              // Gambar ditengah dengan margin atas
              Container(
                margin: EdgeInsets.only(top: 10), // Sesuaikan margin atas
                child: Image.asset(
                  'assets/frame.png', // Gantilah dengan path gambar Anda
                  width: 200, // Sesuaikan dengan ukuran yang Anda inginkan
                  height: 200,
                ),
              ),
              SizedBox(height: 1),
              // Teks di bawah gambar
              Text(
                'New Experience',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 1),
              // Teks di bawah button
              Text(
                'Watch a new movie',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 1),
              // Teks di bawah 'Watch a new movie'
              Text(
                'Much easier than any before',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  child: Text(
                    'Get Startted',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white, // Set text color to white
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(400, 50),
                    primary:
                        Colors.black, // Set button background color to black
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
