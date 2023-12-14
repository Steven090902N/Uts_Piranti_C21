import 'package:flutter/material.dart';
import 'package:uts_application_piranti/checkout_no_saldo.dart';
import 'package:uts_application_piranti/checkout_screen.dart';

class SelectSeat extends StatefulWidget {
  const SelectSeat({Key? key}) : super(key: key);

  @override
  _SelectSeatState createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  // Daftar kursi yang dipilih
  List<String> selectedSeats = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Seat',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Visual Monitor Bioskop
          Container(
            height: 100,
            width: 420,
            decoration: BoxDecoration(
              color: Colors.black, // Ganti dengan warna sesuai kebutuhan
              // Anda bisa menggunakan AssetImage atau NetworkImage sesuai sumber gambar
              image: DecorationImage(
                image: AssetImage(
                    'assets/monitor.jpg'), // Ganti dengan path atau nama file gambar yang sesuai
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 30),
          // Kotak-kotak untuk kursi
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    10, // Sesuaikan dengan jumlah kolom yang diinginkan
                mainAxisSpacing:
                    4.0, // Sesuaikan dengan jarak antar baris yang diinginkan
                crossAxisSpacing:
                    4.0, // Sesuaikan dengan jarak antar kolom yang diinginkan
              ),
              itemCount: 100, // Sesuaikan dengan jumlah total kursi
              itemBuilder: (context, index) {
                // Ganti logika berikut sesuai dengan kondisi kursi
                if (index % 5 == 0) {
                  // Kursi Satin
                  return Container(
                    color: Colors.purple,
                    child: Center(
                      child: Text(
                        'S',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                } else if (index % 7 == 0) {
                  // Kursi Unavailable
                  return Container(
                    color: Colors.grey,
                  );
                } else if (index < 60) {
                  // Kursi Available (Your Seat)
                  return GestureDetector(
                    onTap: () {
                      // Tambahkan logika saat kursi dipilih
                      String seat = 'A${index % 6 + 1}';
                      setState(() {
                        if (selectedSeats.contains(seat)) {
                          selectedSeats.remove(seat);
                        } else {
                          selectedSeats.add(seat);
                        }
                      });
                      print('Selected Seats: $selectedSeats');
                    },
                    child: Container(
                      color: selectedSeats.contains('A${index % 6 + 1}')
                          ? Colors
                              .green // Ganti dengan warna kursi yang dipilih
                          : Colors.blue,
                      child: Center(
                        child: Text(
                          'A${index % 6 + 1}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                } else if (index >= 60 && index < 80) {
                  // Kursi Available (Your Seat)
                  return GestureDetector(
                    onTap: () {
                      // Tambahkan logika saat kursi dipilih
                      String seat = 'B${index % 6 + 1}';
                      setState(() {
                        if (selectedSeats.contains(seat)) {
                          selectedSeats.remove(seat);
                        } else {
                          selectedSeats.add(seat);
                        }
                      });
                      print('Selected Seats: $selectedSeats');
                    },
                    child: Container(
                      color: selectedSeats.contains('B${index % 6 + 1}')
                          ? Colors
                              .green // Ganti dengan warna kursi yang dipilih
                          : Colors.blue,
                      child: Center(
                        child: Text(
                          'B${index % 6 + 1}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  // Kursi Available (Your Seat)
                  return GestureDetector(
                    onTap: () {
                      // Tambahkan logika saat kursi dipilih
                      String seat = 'G${index % 6 + 1}';
                      setState(() {
                        if (selectedSeats.contains(seat)) {
                          selectedSeats.remove(seat);
                        } else {
                          selectedSeats.add(seat);
                        }
                      });
                      print('Selected Seats: $selectedSeats');
                    },
                    child: Container(
                      color: selectedSeats.contains('G${index % 6 + 1}')
                          ? Colors
                              .green // Ganti dengan warna kursi yang dipilih
                          : Colors.blue,
                      child: Center(
                        child: Text(
                          'G${index % 6 + 1}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          const SizedBox(height: 20),
          // Kotak Total Price dan Seat Selected
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\Rp.${selectedSeats.length * 50000}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Seat Selected',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        selectedSeats
                            .join(', '), // Menampilkan kursi yang dipilih
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
// Tombol "Buy Ticket" berserta ikon tiket
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckoutNo(),
                  ),
                );
              },
              icon: Icon(Icons.movie_filter_outlined),
              label: Text(
                'Order',
                style: TextStyle(
                    fontSize: 20), // Sesuaikan ukuran font sesuai kebutuhan
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(
                    400, 50), // Sesuaikan lebar dan tinggi sesuai kebutuhan
              ),
            ),
          ),
        ],
      ),
    );
  }
}
