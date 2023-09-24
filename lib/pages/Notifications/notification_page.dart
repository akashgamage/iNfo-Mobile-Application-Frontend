import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme_provider.dart';

class NotificationPage extends StatelessWidget {
  final List<String> notifications = [
    'Notification 1',
    'Notification 2',
    'Notification 3',
    'Notification 4',
    'Notification 5',
    // 'Notification 6',
  ];

  NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.currentTheme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
            color: themeProvider.currentTheme.textTheme.bodyText1?.color,
          ),
        ),
        backgroundColor: themeProvider.currentTheme.scaffoldBackgroundColor,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Card(
              color: themeProvider.currentTheme.backgroundColor,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: ListTile(
                leading: Image.asset(
                  'assets/icons/bell.png',
                  width: 24,
                  height: 24,
                  color: const Color.fromARGB(255, 7, 57, 97),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(notifications[index],
                      style: TextStyle(
                        color: themeProvider
                            .currentTheme.textTheme.bodyText1?.color,
                      ).copyWith(fontWeight: FontWeight.w700)),
                ),
                subtitle: Text(
                  'This is a sample notification.',
                  style: TextStyle(
                    color:
                        themeProvider.currentTheme.textTheme.bodyText1?.color,
                  ),
                ),
                onTap: () {
                  
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
