import 'package:flutter/material.dart';
import 'profile_page.dart';

class DashboardPage extends StatelessWidget {
  final String userName;
  DashboardPage({required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Aplikasi'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Halo, $userName 👋',
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),

          // Banner
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/banner.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Menu Grid
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                _menuItem(context, Icons.person, 'Profil', ProfilePage()),
                _menuItem(context, Icons.list_alt, 'Data', null),
                _menuItem(context, Icons.settings, 'Pengaturan', null),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuItem(
      BuildContext context, IconData icon, String title, Widget? page) {
    return GestureDetector(
      onTap: () {
        if (page != null)
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 45, color: Colors.indigo),
              const SizedBox(height: 8),
              Text(title,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}
