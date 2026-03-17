// import 'package:flutter/material.dart';
//
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           "Profile",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: const Color(0xFF2F334D),
//         surfaceTintColor: Colors.transparent,
//         scrolledUnderElevation: 0,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 20),
//
//             // Profile Header
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 16),
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: const Color(0xFF1C1F2E),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: const Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 35,
//                     backgroundColor: const Color(0xFF2F334D),
//                     backgroundImage: const AssetImage('assets/icons/IMG_20221228_230805_653.jpg'),
//                   ),
//                   SizedBox(width: 16),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Guest User",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 6),
//                       Text(
//                         "guest@newsapp.com",
//                         style: TextStyle(
//                           color: Colors.white70,
//                           fontSize: 14,
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//
//             const SizedBox(height: 25),
//
//             // My News Section
//             _buildSectionTitle("My News"),
//             _buildTile(Icons.bookmark, "Bookmarks"),
//             _buildTile(Icons.history, "Reading History"),
//             _buildTile(Icons.download, "Downloads"),
//
//             const SizedBox(height: 20),
//
//             // Preferences Section
//             _buildSectionTitle("Preferences"),
//             _buildTile(Icons.notifications, "Notifications"),
//             _buildTile(Icons.dark_mode, "Dark Mode"),
//             _buildTile(Icons.language, "Language"),
//             _buildTile(Icons.category, "Favorite Categories"),
//
//             const SizedBox(height: 20),
//
//             // More Section
//             _buildSectionTitle("More"),
//             _buildTile(Icons.info, "About Us"),
//             _buildTile(Icons.privacy_tip, "Privacy Policy"),
//             _buildTile(Icons.share, "Share App"),
//             _buildTile(Icons.star_rate, "Rate App"),
//             _buildTile(Icons.logout, "Logout", isLogout: true),
//
//             const SizedBox(height: 30),
//           ],
//         ),
//       ),
//     );
//   }
//
//   static Widget _buildSectionTitle(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Text(
//           title,
//           style: const TextStyle(
//             color: Colors.white70,
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
//
//   static Widget _buildTile(IconData icon, String title,
//       {bool isLogout = false}) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//       decoration: BoxDecoration(
//         color: const Color(0xFF1C1F2E),
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: ListTile(
//         leading: Icon(
//           icon,
//           color: isLogout ? Colors.redAccent : Colors.white,
//         ),
//         title: Text(
//           title,
//           style: TextStyle(
//             color: isLogout ? Colors.redAccent : Colors.white,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         trailing: const Icon(
//           Icons.arrow_forward_ios,
//           color: Colors.white54,
//           size: 16,
//         ),
//         onTap: () {},
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../SettingsPage/settings_page.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF2F334D),
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Profile Header
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1C1F2E),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xFF2F334D),
                    backgroundImage: AssetImage(
                      'assets/icons/IMG_20221228_230805_653.jpg',
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Guest User",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "guest@newsapp.com",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 25),

            _buildSectionTitle("My News"),
            _buildTile(Icons.bookmark, "Bookmarks"),
            _buildTile(Icons.history, "Reading History"),
            _buildTile(Icons.download, "Downloads"),

            const SizedBox(height: 20),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFF1C1F2E),
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white54,
                  size: 16,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                },
              ),
            ),

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

  static Widget _buildTile(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1F2E),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
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