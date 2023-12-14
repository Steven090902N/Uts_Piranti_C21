import 'package:flutter/material.dart';
import 'package:uts_application_piranti/my_ticket.dart';

class TicketDetails extends StatefulWidget {
  const TicketDetails({Key? key}) : super(key: key);

  @override
  _TicketDetailsState createState() => _TicketDetailsState();
}

class _TicketDetailsState extends State<TicketDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket '),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyTicket(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container berbentuk kotak di bagian atas
            Container(
              margin: EdgeInsets.only(left: 35.0),
              width: 350,
              height: 200.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                child: Image(
                  image: AssetImage('assets/images/mask_group.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Sisanya dari konten halaman
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Column(
                children: [
                  // Use a Stack to overlay text on top of the image
                  Stack(
                    children: [
                      Image.asset(
                        'assets/Subtract.png',
                        width: 429.0,
                        height: 450.0,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 30.0,
                        left: 30.0,
                        child: Text(
                          'Fast 9',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30.0,
                        right: 30.0,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          child: Text(
                            'CGV',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      // New text and icon
                      Positioned(
                        bottom: 350.0,
                        left: 30.0,
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              // color: Colors.white,
                              size: 20.0,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              'PLAZA CANTER SMD',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                // color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // New text "Date: 20 Nov"
                      Positioned(
                        bottom: 270.0, // Sesuaikan posisi sesuai kebutuhan
                        left: 40.0,
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors
                                  .black, // Sesuaikan warna teks sesuai kebutuhan
                            ),
                            children: [
                              TextSpan(
                                text: 'Date \n',
                              ),
                              TextSpan(
                                text: '20 Nov',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 270.0, // Sesuaikan posisi sesuai kebutuhan
                        left: 170.0,
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors
                                  .black, // Sesuaikan warna teks sesuai kebutuhan
                            ),
                            children: [
                              TextSpan(
                                text: 'Hour \n',
                              ),
                              TextSpan(
                                text: '15:05',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 270.0, // Sesuaikan posisi sesuai kebutuhan
                        left: 280.0,
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors
                                  .black, // Sesuaikan warna teks sesuai kebutuhan
                            ),
                            children: [
                              TextSpan(
                                text: 'Seats \n',
                              ),
                              TextSpan(
                                text: 'C1, C2',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // New image below text
                      Positioned(
                        bottom: 248.0, // Adjust the position as needed
                        left: 36.0,
                        child: Image(
                          image: AssetImage('assets/images/vector9.png'),
                          width: 360.0, // Adjust the width as needed
                          // height: 100.0, // Adjust the height as needed
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 180.0, // Sesuaikan posisi sesuai kebutuhan
                        left: 40.0,
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors
                                  .black, // Sesuaikan warna teks sesuai kebutuhan
                            ),
                            children: [
                              TextSpan(
                                text: 'Booking Code \n',
                              ),
                              TextSpan(
                                text: '091821912301',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 110.0, // Sesuaikan posisi sesuai kebutuhan
                        left: 50.0,
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors
                                  .black, // Sesuaikan warna teks sesuai kebutuhan
                            ),
                            children: [
                              TextSpan(
                                text: 'Pass Key \n',
                              ),
                              TextSpan(
                                text: '129312',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 10.0, // Adjust the position as needed
                        left: 40.0,
                        child: Image(
                          image: AssetImage('assets/images/group_9.png'),
                          width: 300.0, // Adjust the width as needed
                          // height: 100.0, // Adjust the height as needed
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
