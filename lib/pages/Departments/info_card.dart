import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String imagePath;
  final String description;
  final String additionalText;

  const InfoCard({
    super.key,
    required this.imagePath,
    required this.description,
    required this.additionalText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(218, 215, 255, 0.50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(imagePath),
                  radius: 30,
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        description,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        additionalText,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your button action here.
                  },
                  child: const Text('Email'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
