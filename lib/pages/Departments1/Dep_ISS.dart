import 'package:flutter/material.dart';
import 'package:departments1/pages/info_card.dart';

class ISS extends StatelessWidget {
  const ISS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap the content in SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Heading Image
                Image.asset(
                  'assets/ISS/ISS.jpg',
                  fit: BoxFit.cover,
                  height: 170,
                  width: 150,
                ),
                const SizedBox(height: 8.0),
                // Info Cards
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    InfoCard(
                      imagePath: 'assets/CSSE/dean-foc.jpg',
                      description: 'Dr. Rasika Ranaweera',
                      additionalText: 'Dean - Faculty of Computing',
                    ),
                    InfoCard(
                      imagePath: 'assets/ISS/mr.shafraz.jpg',
                      description: 'Dr. Mohamed Shafraz',
                      additionalText: 'Head / Senior Lecturer',
                    ),
                    InfoCard(
                      imagePath: 'assets/ISS/mr.naji.jpg',
                      description: 'Mr. Naji Saravanabavan',
                      additionalText: 'Senior Lecturer',
                    ),
                    InfoCard(
                      imagePath: 'assets/ISS/ms.chalani.jpg',
                      description: 'Ms. Chalani Oruthotaarachchi',
                      additionalText: 'Senior Lecturer',
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                // Close Button
                /*ElevatedButton(
                  onPressed: () {
                    // To close the popup on button click.
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
                */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
