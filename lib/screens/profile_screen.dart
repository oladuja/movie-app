import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).viewPadding.top + 20),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: const [
                  CircleAvatar(
                    radius: 61,
                    backgroundColor: Color(0XFFFFBB3B),
                  ),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        AssetImage('assets/images/Profile picture.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Tasun Prasad',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const Center(
              child: Text(
                'Premium',
                style: TextStyle(
                  color: Color(0XFFFFBB3B),
                  fontSize: 18,
                ),
              ),
            ),
            const ProfileWidget(
              icon: Icons.person,
              data: 'Account',
            ),
            const Divider(
              color: Colors.white,
              height: 1,
            ),
            const ProfileWidget(
              icon: Icons.notifications,
              data: 'Notifications',
            ),
            const Divider(
              color: Colors.white,
              height: 1,
            ),
            const ProfileWidget(
              icon: Icons.settings,
              data: 'Settings',
            ),
            const Divider(
              color: Colors.white,
              height: 1,
            ),
            const ProfileWidget(
              icon: Icons.help,
              data: 'Help',
            ),
            const Divider(
              color: Colors.white,
              height: 1,
            ),
            const ProfileWidget(
              icon: Icons.logout,
              data: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}
