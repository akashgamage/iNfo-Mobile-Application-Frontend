import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../theme_provider.dart';
import '../login_page.dart';

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
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: themeProvider.currentTheme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: themeProvider.currentTheme.textTheme.bodyText1
                ?.color, 
          ),
        ),
        backgroundColor: themeProvider.currentTheme.scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Notifications Option
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

                // Divider
                _buildDivider(),

                // Theme Option
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
                        
                        themeProvider.toggleTheme(_darkModeEnabled);
                      });
                    },
                  ),
                ),

                // Divider
                _buildDivider(),

                // Privacy & Policies Option
                _buildSettingsOption(
                  icon: Icons.privacy_tip,
                  title: 'Privacy & Policies',
                  showArrow: true,
                  onTap: () {
                    Navigator.pushNamed(context, '/privacy_policies');
                  },
                ),

                // Divider
                _buildDivider(),

                // About Option
                _buildSettingsOption(
                  icon: Icons.info,
                  title: 'About',
                  showArrow: true,
                  onTap: () {
                    Navigator.pushNamed(context, '/about');
                  },
                ),

                // Divider
                _buildDivider(),

                const SizedBox(height: 18),

                // Logout Button
                _buildLogoutButton(),
              ],
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
    final themeProvider = Provider.of<ThemeProvider>(context);

    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          icon,
          color: themeProvider.currentTheme.textTheme.bodyText1?.color,
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              color: themeProvider.currentTheme.textTheme.bodyText1?.color,
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
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: themeProvider.currentTheme.textTheme.bodyText1?.color,
              ),
          ],
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
                Navigator.pushReplacement(
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
  
  Widget _buildLogoutButton() {
    return ElevatedButton(
      onPressed: () {
        _showLogoutConfirmationDialog();
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: const Color.fromARGB(255, 7, 57, 97),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const Text(
          'Logout',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
