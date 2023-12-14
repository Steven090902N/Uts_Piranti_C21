import 'package:flutter/material.dart';
import 'top_up.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckoutNo(),
    );
  }
}

class CheckoutNo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 30.0),
          child: Column(
            children: [
              // Use a Stack to overlay text on top of the image
              Stack(
                children: [
                  Image.asset(
                    'assets/Subtract.png',
                    width: 640.0,
                    height: 653.0,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 530.0,
                    left: 25.0,
                    child: Image.asset(
                      'assets/playing1.jpeg',
                      width: 100.0,
                      height: 130.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 15.0,
                    left: 145.0,
                    child: Text(
                      'Fast 9',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60.0,
                    left: 145.0,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors
                              .black, // Sesuaikan warna teks sesuai kebutuhan
                        ),
                        children: [
                          TextSpan(
                            text: 'CGV Plaza Canter SMD, \n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Studio 1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 95.0,
                    left: 145.0,
                    child: Text(
                      'Monday, 17 Sep 2023, 11:00',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  // New image below text
                  Positioned(
                    top: 173.0, // Adjust the position as needed
                    left: 37.0,
                    child: Image(
                      image: AssetImage('assets/Vector8.png'),
                      width: 285.0, // Adjust the width as needed
                      // height: 100.0, // Adjust the height as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 190.0, // Sesuaikan posisi sesuai kebutuhan
                    left: 20.0,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors
                              .grey, // Sesuaikan warna teks sesuai kebutuhan
                        ),
                        children: [
                          TextSpan(
                            text: 'Order Number \n',
                          ),
                          TextSpan(
                            text: '1198804794001625088',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 235.0, // Sesuaikan posisi sesuai kebutuhan
                    left: 20.0,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors
                              .grey, // Sesuaikan warna teks sesuai kebutuhan
                        ),
                        children: [
                          TextSpan(
                            text: 'Seat \n',
                          ),
                          TextSpan(
                            text: 'C3, C4',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 275.0, // Sesuaikan posisi sesuai kebutuhan
                    left: 20.0,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors
                              .grey, // Sesuaikan warna teks sesuai kebutuhan
                        ),
                        children: [
                          TextSpan(
                            text: 'Payment Method \n',
                          ),
                          TextSpan(
                            text: 'Dana (089xxxxxx212)',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 315.0, // Sesuaikan posisi sesuai kebutuhan
                    left: 20.0,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors
                              .grey, // Sesuaikan warna teks sesuai kebutuhan
                        ),
                        children: [
                          TextSpan(
                            text: 'Regular Seat \n',
                          ),
                          TextSpan(
                            text: 'Rp40.000 ',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' x 2',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 360.0, // Sesuaikan posisi sesuai kebutuhan
                    left: 20.0,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors
                              .grey, // Sesuaikan warna teks sesuai kebutuhan
                        ),
                        children: [
                          TextSpan(
                            text: 'Convenience Fee \n',
                          ),
                          TextSpan(
                            text: 'Rp3.000 ',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' x 2',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 405.0, // Sesuaikan posisi sesuai kebutuhan
                    left: 20.0,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors
                              .grey, // Sesuaikan warna teks sesuai kebutuhan
                        ),
                        children: [
                          TextSpan(
                            text: 'Saldo Wallet \n',
                          ),
                          TextSpan(
                            text: 'Rp50.000 ',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 420.0, // Adjust the position as needed
                    left: 17.0,
                    child: Image(
                      image: AssetImage('assets/line11.png'),
                      width: 300.0, // Adjust the width as needed
                      // height: 100.0, // Adjust the height as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 480.0, // Sesuaikan posisi sesuai kebutuhan
                    left: 20.0,
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors
                              .grey, // Sesuaikan warna teks sesuai kebutuhan
                        ),
                        children: [
                          TextSpan(
                            text: 'Actual Pay \n',
                          ),
                          TextSpan(
                            text: 'Rp86.000 ',
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Tombol "TopUp Wallet"
                  Positioned(
                    top: 550.0,
                    left: 15.0,
                    child: ElevatedButton(
                      onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TopUp(),
                           ),  
                        );
                      },
                      child: Text(
                        'Top Up Wallet',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // Warna latar belakang tombol
                        onPrimary: Colors.white, // Warna teks tombol
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                        // Atur ukuran tombol sesuai kebutuhan
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
