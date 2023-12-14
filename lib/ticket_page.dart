import 'package:flutter/material.dart';
import 'package:uts_application_piranti/select_seat.dart';

class Ticket extends StatefulWidget {
  const Ticket({super.key});

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  // Daftar jam yang tersedia
  List<String> availableTimes = [
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
    '20:00',
  ];

  // Variabel untuk menyimpan jam yang dipilih
  String selectedTime = '19:00';

  // Daftar hari yang tersedia
  List<String> availableDays = [
    '11/Senin',
    '12/Selasa',
    '13/Rabu',
    '14/Kamis',
    '15/Jumat',
    '16/Sabtu',
    '17/Minggu',
  ];

  // Variabel untuk menyimpan hari yang dipilih
  String selectedDay = '11/Senin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ticket',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // Gambar Fast & Furious 9 dengan teks dan genre
          Stack(
            children: [
              Image.asset(
                'assets/playing1.jpeg', // Ganti dengan path atau nama file gambar yang sesuai
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 8,
                left: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fast & Furious 9',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Action, Adventure',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Informasi di bawah gambar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Gambar di sebelah kiri
                Image.asset(
                  'assets/playing1.jpeg', // Ganti dengan path atau nama file gambar yang sesuai
                  width: 150,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 8),
                // Informasi di sebelah kanan gambar
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      Text(
                        ' Director      : Justin Lin',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors
                              .black, // Ganti dengan warna sesuai kebutuhan
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        ' Writer         : Chris Morgan',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors
                              .black, // Ganti dengan warna sesuai kebutuhan
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        ' Duration     : 1h 39m',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors
                              .black, // Ganti dengan warna sesuai kebutuhan
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        ' Age Rating : D (17+)',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors
                              .black, // Ganti dengan warna sesuai kebutuhan
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Teks Schedule
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Schedule',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Kotak pilihan hari
          Container(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: availableDays.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedDay = availableDays[index];
                    });
                  },
                  child: Container(
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: selectedDay == availableDays[index]
                          ? Colors.blue
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      availableDays[index],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          // Teks Jam
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Jam',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Kotak pilihan jam
          Container(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: availableTimes.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedTime = availableTimes[index];
                    });
                  },
                  child: Container(
                    width: 80,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: selectedTime == availableTimes[index]
                          ? Colors.blue
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      availableTimes[index],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          // Teks Cinema
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Cinema 21',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Kotak harga tiket, jam, dan nama bioskop
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Harga Tiket     : Rp 50.000',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color:
                          Colors.black, // Ganti dengan warna sesuai kebutuhan
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Jam                  : $selectedTime WIB',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color:
                          Colors.black, // Ganti dengan warna sesuai kebutuhan
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Tanggal/Hari   : $selectedDay',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color:
                          Colors.black, // Ganti dengan warna sesuai kebutuhan
                    ),
                  ),
                ],
              ),
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
                    builder: (context) => SelectSeat(),
                  ),
                );
              },
              icon: Icon(
                Icons.movie_filter_outlined,
                color: Colors.white,
              ),
              label: Text(
                'Buy Ticket',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}