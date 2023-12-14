import 'package:flutter/material.dart';
import 'package:uts_application_piranti/home_page.dart';
import 'edit_profile.dart';
import 'my_wallet.dart';
import 'Login.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  final double circleContainerHeight = 120.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Aksi yang diambil saat tombol logout diklik
              // Tambahkan aksi logout atau navigasi ke halaman login di sini
              print('Logout diklik');
              // Contoh navigasi kembali ke halaman login
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Container(
            alignment: Alignment.center,
            child: Container(
              height: circleContainerHeight,
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 20.0),
              child: ClipOval(
                child: Image(
                  image: AssetImage('assets/images/img_rectangle_100.png'),
                  width: circleContainerHeight,
                  height: circleContainerHeight,
                  fit: BoxFit.cover,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 52, 122, 175),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Mr. Bean',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            'mrbe****88@gmail.com',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 40.0),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Icon(
                  Icons.edit,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Arahkan ke halaman EditProfile
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfile(),
                    ),
                  );
                },
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Icon(
                  Icons.account_balance_wallet,
                  color: Colors.black,
                  size: 40.0,
                ),
              ),
              SizedBox(width: 8.0),
              GestureDetector(
                onTap: () {
                  // Arahkan ke halaman MyWallet
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWallet(),
                    ),
                  );
                },
                child: Text(
                  'My Wallet',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0), // Atur jarak kiri sesuai kebutuhan
                // child: Icon(Icons.account_balance_wallet, color: Colors.black),
                child: Icon(
                  Icons.language_rounded,
                  color: Colors.black,
                  size: 40.0, // Atur ukuran ikon sesuai kebutuhan
                ),
              ),
              SizedBox(width: 8.0),
              Text(
                'Change Language',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0), // Atur jarak kiri sesuai kebutuhan
                // child: Icon(Icons.account_balance_wallet, color: Colors.black),
                child: Icon(
                  Icons.help_center_rounded,
                  color: Colors.black,
                  size: 40.0, // Atur ukuran ikon sesuai kebutuhan
                ),
              ),
              SizedBox(width: 8.0),
              Text(
                'Help Center',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0), // Atur jarak kiri sesuai kebutuhan
                // child: Icon(Icons.account_balance_wallet, color: Colors.black),
                child: Icon(
                  Icons.rate_review_sharp,
                  color: Colors.black,
                  size: 40.0, // Atur ukuran ikon sesuai kebutuhan
                ),
              ),
              SizedBox(width: 8.0),
              Text(
                'Rate Flutix App',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
