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
        centerTitle: true,
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 7, 57, 97),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min
            children: [
              Icon(Icons.arrow_back_ios, color: Colors.black),
              Padding(
                padding: EdgeInsets.only(
                    left: 1.0), // Add spacing between icon and text
                child: Text(
                  'Back',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg4.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return Card(
              color: const Color.fromARGB(255, 229, 228, 245),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
            );
          },
        ),
      ),
    );
  }
}
