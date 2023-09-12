import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:info_mobile_application/pages/login_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationEnabled = true;
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Added MaterialApp wrapper for the entire app
      home: Theme(
        data: _darkModeEnabled ? ThemeData.dark() : ThemeData.light(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Settings',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: _darkModeEnabled ? Colors.grey[800] : Colors.white,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSettingsOption(
                      icon: Icons.notifications,
                      title: 'Notifications',
                      content: CupertinoSwitch(
                        activeColor: const Color.fromARGB(255, 7, 57, 97),
                        trackColor: Colors.grey,
                        value: _notificationEnabled,
                        onChanged: (value) {
                          setState(() {
                            _notificationEnabled = value;
                          });
                        },
                      ),
                    ),
                    _buildDivider(),
                    _buildSettingsOption(
                      icon: Icons.lightbulb,
                      title: 'Theme',
                      content: CupertinoSwitch(
                        activeColor: const Color.fromARGB(255, 7, 57, 97),
                        trackColor: Colors.grey,
                        value: _darkModeEnabled,
                        onChanged: (value) {
                          setState(() {
                            _darkModeEnabled = value;
                          });
                        },
                      ),
                    ),
                    _buildDivider(),
                    _buildSettingsOption(
                      icon: Icons.privacy_tip,
                      title: 'Privacy & Policies',
                      showArrow: true,
                      onTap: () {
                        Navigator.pushNamed(context, '/privacy_policies');
                      },
                    ),
                    _buildDivider(),
                    _buildSettingsOption(
                      icon: Icons.info,
                      title: 'About',
                      showArrow: true,
                      onTap: () {
                        Navigator.pushNamed(context, '/about');
                      },
                    ),
                    _buildDivider(),
                    const SizedBox(height: 18),
                    _buildLogoutButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsOption({
    IconData? icon,
    required String title,
    Widget? content,
    bool showArrow = false,
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading:
            Icon(icon, color: _darkModeEnabled ? Colors.white : Colors.black54),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              color: _darkModeEnabled ? Colors.white : Colors.black,
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (content != null) content,
            if (showArrow)
              Icon(Icons.arrow_forward_ios,
                  size: 16,
                  color: _darkModeEnabled ? Colors.white : Colors.black),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoutButton() {
    return ElevatedButton(
      onPressed: () {
        _showLogoutConfirmationDialog();
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: _darkModeEnabled ? Colors.white : Colors.black,
        backgroundColor: _darkModeEnabled ? Colors.grey[800] : Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: const Text(
        'Logout',
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      thickness: 1,
    );
  }

  void _showLogoutConfirmationDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Logout Confirmation',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800,
            ),
          ),
          content: const Text(
            'Are you sure you want to logout?',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                // navigation to the login screen
               Navigator.push(
           context,
             MaterialPageRoute(builder: (context) => const LoginPage()),
           );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _darkModeEnabled
                    ? const Color.fromARGB(255, 7, 57, 97)
                    : const Color.fromARGB(255, 7, 57, 97),
              ),
              child: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
