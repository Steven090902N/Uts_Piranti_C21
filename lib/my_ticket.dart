import 'package:flutter/material.dart';
import 'ticket_details.dart'; // Pastikan untuk mengimport file ticket_details.dart
import 'home_page.dart';

class MyTicket extends StatefulWidget {
  const MyTicket({Key? key}) : super(key: key);

  @override
  State<MyTicket> createState() => _MyTicketState();
}

class _MyTicketState extends State<MyTicket> {
  int _selectedIndex = 1; // Index of the selected tab

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 248, 247, 247),
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                        ),
                        child: Text(
                          'Active Ticket',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'All Transaction',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.0),

            // Film 1
            buildMovieStack(
              'assets/images/subtract_1.png',
              'assets/images/img_rectangle_107.png',
              'Fast 9',
              'Monday 17, 11:00',
              'CGv  Plaza Canter SMD',
            ),

            // Film 2
            buildMovieStack(
              'assets/images/subtract_1.png',
              'assets/images/img_rectangle_46.png',
              'Insidious: The Rad Doors',
              'Monday 17, 11:45',
              'CGv  Plaza Canter SMD',
            ),

            // Film 3
            buildMovieStack(
              'assets/images/subtract_1.png',
              'assets/images/img_rectangle_47.png',
              'Indiana Jones',
              'Monday 17, 12:15',
              'CGv  Paris Van Java Mall',
            ),

            // Film 4
            buildMovieStack(
              'assets/images/subtract_1.png',
              'assets/images/img_rectangle_48.png',
              'The Nun',
              'Monday 17, 12:45',
              'CGv  Paris Van Java Mall',
            ),

            // Add more widgets here as needed
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Ticket',
          ),
        ],
      ),
    );
  }

  Widget buildMovieStack(
    String backgroundImagePath,
    String posterImagePath,
    String title,
    String time,
    String location,
  ) {
    return Stack(
      children: [
        Container(
          width: 450,
          height: 200,
          color: Colors.white,
          child: Image.asset(
            backgroundImagePath,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 30,
          left: 10,
          child: Container(
            width: 90,
            height: 130,
            color: const Color.fromARGB(255, 247, 246, 246),
            child: Center(
              child: Image.asset(
                posterImagePath,
                width: 80,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 40.0,
          left: 170.0,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 70.0,
          left: 170.0,
          child: Opacity(
            opacity: 0.5,
            child: Text(
              time,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 100.0,
          left: 170.0,
          child: Opacity(
            opacity: 0.5,
            child: Text(
              location,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 19,
          left: 120,
          child: Image.asset(
            'assets/vector9_tegak.png',
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        // GestureDetector to navigate to ticket details
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TicketDetails(),
              ),
            );
          },
          child: Container(
            width: 450,
            height: 200,
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Implement navigation logic based on the selected tab index
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyTicket(),
        ),
      );
    }
  }
}
