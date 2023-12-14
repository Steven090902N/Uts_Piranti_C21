// success_top_up.dart
import 'package:flutter/material.dart';
import 'package:uts_application_piranti/checkout_screen.dart';
import 'package:uts_application_piranti/home_page.dart'; // Pastikan untuk mengimport file homepage.dart
import 'package:uts_application_piranti/success_pay_ticket.dart';
import 'top_up.dart';

class SuccessTopUp extends StatefulWidget {
  const SuccessTopUp({Key? key}) : super(key: key);

  @override
  _SuccessTopUpState createState() => _SuccessTopUpState();
}

class _SuccessTopUpState extends State<SuccessTopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 200.0,
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                      'assets/images/img_success_icon_component.png'),
                  width: 150.0,
                  height: 150.0,
                ),
                SizedBox(height: 16.0),
                Text(
                  'Top Up Successful',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Thank you for Patronizing us today.\nWe value you!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 80.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckoutScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2F2D3E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 90.0,
                        vertical: 10.0,
                      ),
                      child: Text(
                        'Check Out',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                // Button to go back to HomePage
                TextButton(
                  onPressed: () {
                    // Arahkan ke HomePage saat tombol ditekan
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                      (route) => false, // Hindari kembali ke halaman ini
                    );
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.blue, // Sesuaikan warna teks tombol
                  ),
                  child: Text(
                    'Back to Home',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
