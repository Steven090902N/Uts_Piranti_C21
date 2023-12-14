import 'package:flutter/material.dart';
import 'success_top_up.dart';
class TopUp extends StatefulWidget {
  const TopUp({Key? key}) : super(key: key);

  @override
  _TopUpState createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  String selectedBank = 'Bank'; // Default selected bank
  String selectedCurrency = 'Rp.50.000'; // Default selected currency
  String selectedAmount = ''; // Variable to store selected amount

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Up'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),

              // Add the bank selection dropdown as a box
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonFormField<String>(
                  value: selectedBank,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedBank = newValue!;
                    });
                  },
                  items: <String>['Bank', 'BNI', 'BRI', 'Mandiri']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),

              // Add the title for the currency selection dropdown
              SizedBox(height: 40),
              // ... Rest of your code
              buildTopUpContainer('Rp.50.000'),
              buildTopUpContainer('Rp.100.000'),
              buildTopUpContainer('Rp.150.000'),
              buildTopUpContainer('Rp.250.000'),
              buildTopUpContainer('Rp.500.000'),
              buildTopUpContainer('Rp.1000.000'),

              SizedBox(height: 50.0),
              // Top Up Wallet Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessTopUp(),
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
                      'Top Up Wallet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTopUpContainer(String amount) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAmount = amount;
        });
      },
      child: Container(
        width: 500,
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 12),
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
          color: selectedAmount == amount ? Colors.blue : Colors.white,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            amount,
            style: TextStyle(
              fontSize: 16,
              color: selectedAmount == amount ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
