import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  final double circleContainerHeight = 120.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);// Add navigation logic here if needed
          },
        ),
        title: Text("Edit Profil"),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: circleContainerHeight,
                margin: EdgeInsets.only(bottom: 20.0),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/img_rectangle_100.png',
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
              Positioned(
                top: 105,
                left: 50,
                child: Icon(
                  Icons.add_circle,
                  color: const Color.fromARGB(255, 230, 224, 224),
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter your username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 16.0),
                PasswordField(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  onChanged: (value) {
                    // Handle password changes
                  },
                ),
                SizedBox(height: 16.0),
                PasswordField(
                  labelText: 'Confirm Password',
                  hintText: 'Confirm your password',
                  onChanged: (value) {
                    // Handle password confirmation changes
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 60.0),
          ElevatedButton(
            onPressed: () {
              // Add logic for updating profile
            },
             child: Text('Update Now'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Ubah menjadi warna hitam
                onPrimary: Colors.white, // Ubah menjadi warna putih
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                minimumSize: Size(400, 50),
              ),
            ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final ValueChanged<String> onChanged;

  PasswordField({
    required this.labelText,
    required this.hintText,
    required this.onChanged,
  });

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        prefixIcon: Icon(Icons.lock),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
    );
  }
}
