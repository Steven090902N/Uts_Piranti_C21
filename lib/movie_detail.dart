import 'package:flutter/material.dart';
import 'package:uts_application_piranti/ticket_page.dart';

class MovieDetail extends StatefulWidget {
  const MovieDetail({Key? key}) : super(key: key);

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movie Detail',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
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
                // Kotak Synopsis
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Synopsis',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Kotak Cast
                Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cast',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Vin Diesel, Michelle Rodriguez, Tyrese Gibson, Ludacris, John Cena, Charlize Theron',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ticket(),
                    ),
                  ); // Tambahkan logika untuk membeli tiket
                },
                icon: Icon(
                  Icons.movie_filter_outlined,
                  color: Colors.white, // Warna ikon putih
                ),
                label: Text(
                  'Buy Ticket',
                  style: TextStyle(
                    color: Colors.white, // Warna teks putih
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Latar belakang tombol warna hitam
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MovieDetail(),
  ));
}
