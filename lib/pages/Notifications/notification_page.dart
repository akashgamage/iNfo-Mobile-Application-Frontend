import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  // Sample list of notifications
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        iconTheme:
            IconThemeData(color: const Color.fromARGB(255, 255, 255, 255)),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Card(
              color: const Color.fromARGB(255, 224, 242, 255),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: ListTile(
                leading: const Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 7, 57, 97),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(notifications[index],
                      style: const TextStyle(color: Colors.black)
                          .copyWith(fontWeight: FontWeight.w700)),
                ),
                subtitle: const Text('This is a sample notification.'),
                onTap: () {
                  // Handle notification tap here if needed
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
