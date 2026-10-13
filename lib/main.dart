import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilMahasiswaApp());
}

class ProfilMahasiswaApp extends StatelessWidget {
  const ProfilMahasiswaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Mahasiswa',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const ProfilMahasiswa(),
    );
  }
}

class ProfilMahasiswa extends StatelessWidget {
  const ProfilMahasiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage(
                      'assets/profil.jpeg',
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Muhammad Tanzil Zakaria',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Mahasiswa Teknik Informatika',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text(
                      'Informasi Mahasiswa',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(),
                    infoRow(
                      Icons.badge,
                      'NIM',
                      '2495114037',
                    ),
                    infoRow(
                      Icons.school,
                      'Kelas',
                      'TI A-5',
                    ),
                    infoRow(
                      Icons.computer,
                      'Program Studi',
                      'Teknik Informatika',
                    ),
                    infoRow(
                      Icons.account_balance,
                      'Universitas',
                      'Universitas Hasyim Asy’ari Tebuireng',
                    ),
                    infoRow(
                      Icons.sports_esports,
                      'Hobi',
                      'Main game',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.orange.shade200,
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.deepOrange,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Informasi Tambahan',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Hanya mahasiswa biasa, '
                    'penjual es teh dan pentol.',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Profil mahasiswa berhasil ditampilkan!',
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.check_circle),
              label: const Text('Selesai'),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoRow(
    IconData icon,
    String label,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 12),
          SizedBox(
            width: 105,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}