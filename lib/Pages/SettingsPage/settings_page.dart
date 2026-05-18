import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF2F334D),
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            _buildSectionTitle("Preferences"),
            _buildTile(Icons.notifications, "Notifications"),
            _buildTile(Icons.dark_mode, "Dark Mode"),
            _buildTile(Icons.language, "Language"),
            _buildTile(Icons.category, "Favorite Categories"),

            const SizedBox(height: 20),

            _buildSectionTitle("More"),
            _buildTile(Icons.info, "About Us"),
            _buildTile(Icons.privacy_tip, "Privacy Policy"),
            _buildTile(Icons.share, "Share App"),
            _buildTile(Icons.star_rate, "Rate App"),
            _buildTile(Icons.logout, "Logout", isLogout: true),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  static Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  static Widget _buildTile(
      IconData icon,
      String title, {
        bool isLogout = false,
      }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1F2E),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isLogout ? Colors.redAccent : Colors.white,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isLogout ? Colors.redAccent : Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white54,
          size: 16,
        ),
        onTap: () {},
      ),
    );
  }
}