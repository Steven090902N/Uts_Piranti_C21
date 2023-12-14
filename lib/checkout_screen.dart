import 'package:flutter/material.dart';
import 'package:uts_application_piranti/checkout_no_saldo.dart';
import 'package:uts_application_piranti/success_pay_ticket.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CheckoutScreen(),
    );
  }
}

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/Subtract.png',
                        width: 440.0,
                        height: 623.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 480.0,
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
                            color: Colors.black,
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
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 173.0,
                      left: 27.0,
                      child: Image(
                        image: AssetImage('assets/Vector8.png'),
                        width: 285.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 200.0,
                      left: 20.0,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey,
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
                      top: 250.0,
                      left: 20.0,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey,
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
                      top: 300.0,
                      left: 20.0,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey,
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
                      top: 350.0,
                      left: 20.0,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey,
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
                      top: 400.0,
                      left: 20.0,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey,
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
                      top: 420.0,
                      left: 17.0,
                      child: Image(
                        image: AssetImage('assets/line11.png'),
                        width: 300.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 480.0,
                      left: 20.0,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey,
                          ),
                          children: [
                            TextSpan(
                              text: 'Actual Pay \n',
                            ),
                            TextSpan(
                              text: 'Rp86.000 ',
                              style: TextStyle(
                                fontSize: 26.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 550.0,
                      left: 15.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SuccessPayTicket(),
                            ),
                          );
                          print('Pay Now button pressed');
                        },
                        child: Text(
                          'Pay Now',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 120, vertical: 15),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
