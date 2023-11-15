import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Godrej',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Godrej'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white, // Set the icon color to white
        ),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white), // Set the text color to white
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search icon press
            },
            color: Colors.white, // Set the icon color to white
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            onPressed: () {
              // Handle shopping bag icon press
            },
            color: Colors.white, // Set the icon color to white
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            alignment: Alignment.center,
            // Hapus teks 'Bagian bawah (60%)'
          ),
          Positioned(
            top: 0,
            left: MediaQuery.of(context).size.width * 0.1, // 10% dari lebar layar
            width: MediaQuery.of(context).size.width * 0.8, // 80% dari lebar layar
            height: MediaQuery.of(context).size.height * 0.3, // 30% dari tinggi layar
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16), // Mengatur padding horizontal
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue, // Ganti dengan warna atau gambar profil
                    ),
                    // Isi dengan foto profil, misalnya: child: Image.network('link_gambar_profil'),
                  ),
                  const SizedBox(width: 16), // Tambahkan jarak horizontal di antara lingkaran dan teks
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Godrej',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '5.8789 pengikut',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(16), // Atur sudut tombol
                              color: Colors.blue,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(16), // Atur sudut inkwell
                                onTap: () {
                                  // Handle button press
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  child: Text(
                                    'Mengikuti',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Handle share icon press
                              },
                              icon: const Icon(Icons.share),
                              color: Colors.white, // Ganti warna ikon share menjadi putih
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: MediaQuery.of(context).size.width * 0.05, // 5% dari lebar layar
            width: MediaQuery.of(context).size.width * 0.9, // 90% dari lebar layar
            height: MediaQuery.of(context).size.height * 0.2, // 20% dari tinggi layar
            child: Container(
              color: Colors.grey[300],
              child: Stack(
                children: [
                  PageView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        // Ganti dengan link gambar yang diinginkan
                        'https://merekbagus.com/wp-content/uploads/2020/12/merk-minyak-goreng-terbaik-dan-bagus-untuk-kesehatan.jpg',
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  Positioned(
                    left: 0,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        // Handle left arrow press
                      },
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        // Handle right arrow press
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
