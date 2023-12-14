import 'package:flutter/material.dart';
import 'package:uts_application_piranti/home_page.dart';

class ConfirmAkun extends StatefulWidget {
  const ConfirmAkun({Key? key});

  @override
  State<ConfirmAkun> createState() => _ConfirmAkunState();
}

class _ConfirmAkunState extends State<ConfirmAkun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Add some space at the top
              SizedBox(height: 150),

              // "Confirm Your Account" Text
              Text(
                'Confirm Your Account',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                  height:
                      16), // Add some space between the text and profile picture

              // Profile Picture
              Container(
                width: 200, // Adjust the width as needed
                height: 200, // Adjust the height as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/profile.png'), // Provide the path to your image
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(
                  height:
                      16), // Add some space between the image and "Welcome" text

              // Welcome Text
              Text(
                'Welcome MR. Bean',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                  height:
                      340), // Add some space between the text and the button

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.login,color: Colors.white,),
                  label: Text(
                    'Yes, I am in',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(400, 50),
                    primary: Colors
                        .black, // Sesuaikan lebar dan tinggi sesuai kebutuhan
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
