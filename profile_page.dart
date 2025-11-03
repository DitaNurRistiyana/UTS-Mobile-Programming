import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Pengguna')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/avatar.jpg'),
              ),
              const SizedBox(height: 20),
              const Text('Dita Nur Ristiyana',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const Text('NIM: 24670110', style: TextStyle(fontSize: 16)),
              const Text('Email: dita@gmail.com',
                  style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Prodi: Informatika', style: TextStyle(fontSize: 14)),
                  SizedBox(width: 10),
                  Text('Semester: 5C', style: TextStyle(fontSize: 14)),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali ke Dashboard'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 144, 157, 231),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
