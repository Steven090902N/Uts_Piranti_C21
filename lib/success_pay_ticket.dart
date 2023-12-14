import 'package:flutter/material.dart';
import 'package:uts_application_piranti/my_ticket.dart';
import 'home_page.dart';
class SuccessPayTicket extends StatefulWidget {
  const SuccessPayTicket({Key? key}) : super(key: key);

  @override
  _SuccessPayTicketState createState() => _SuccessPayTicketState();
}

class _SuccessPayTicketState extends State<SuccessPayTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 100.0,
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
                  'Happy Watching!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'You Have Successfully.\nbought the ticket',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 150.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Arahkan ke HomePage saat tombol ditekan
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyTicket(),
                      ),
                      (route) => false, // Hindari kembali ke halaman ini
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
                        'My Tickets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0), // Adjust the spacing as needed
                // Back to Home Text
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                      (route) => false, // Hindari kembali ke halaman ini
                    );
                  },
                  child: Text(
                    'Back to Home',
                    style: TextStyle(
                      color: Color.fromARGB(
                          255, 2, 2, 2), // Change the color as needed
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold, // Make the text bold
                      decoration: TextDecoration.none, // Remove the underline
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
