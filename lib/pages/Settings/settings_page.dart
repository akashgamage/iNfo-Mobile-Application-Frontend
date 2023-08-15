import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'privacy_policies_page.dart';
import 'about_page.dart';

void main() => runApp(const SettingsApp());

class SettingsApp extends StatelessWidget {
  const SettingsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.light, // Light theme by default
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark, // Dark theme when on
      ),
      home: const SettingsPage(),
      routes: {
        '/privacy_policies': (context) => const PrivacyPoliciesPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationEnabled = true;
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _darkModeEnabled ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            children: [
              const SizedBox(
                  width:
                      4),
              Text(
                'Settings',
                style: TextStyle(
                  color: _darkModeEnabled
                      ? Colors.white
                      : Colors
                          .black, 
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          backgroundColor: _darkModeEnabled
              ? Colors.grey[800]
              : Colors.white,
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
                      activeColor: Colors.blue,
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
                      activeColor: Colors.blue,
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
                  _buildLogoutButton(),
                ],
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
              color: _darkModeEnabled
                  ? Colors.white
                  : Colors
                      .black, 
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
                  color: _darkModeEnabled
                      ? Colors.white
                      : Colors
                          .black), 
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
        padding: const EdgeInsets.symmetric(horizontal: 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        foregroundColor: _darkModeEnabled
            ? Colors.white
            : Colors
                .black, 
        backgroundColor: _darkModeEnabled
            ? Colors.grey[800]
            : const Color.fromARGB(255, 255, 255,
                255), 
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
                // navigation to the login screen
                Navigator.pushReplacementNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _darkModeEnabled
                    ? Colors.grey[800]
                    : const Color.fromARGB(255, 219, 226,
                        233), 
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
