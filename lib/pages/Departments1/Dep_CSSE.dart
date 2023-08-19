import 'package:flutter/material.dart';
import 'package:departments1/pages/info_card.dart';

class CSSE extends StatelessWidget {
  const CSSE({super.key});

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
                  'assets/CSSE/CSSE.jpg',
                  fit: BoxFit.cover,
                  height: 150,
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
                      imagePath: 'assets/CSSE/ms.pavithra.jpg',
                      description: 'Ms. Pavithra Subhashini',
                      additionalText: 'Head / Senior Lecturer',
                    ),
                    InfoCard(
                      imagePath: 'assets/CSSE/mr.gayan.jpg',
                      description: 'Mr.Gayan Perera',
                      additionalText: 'Lecturer',
                    ),
                    InfoCard(
                      imagePath: 'assets/CSSE/ms.dulanjali.jpg',
                      description: 'Ms. Dulanjali Wijesekara',
                      additionalText: 'Lecturer',
                    ),
                    InfoCard(
                      imagePath: 'assets/CSSE/ms.hirushi.jpg',
                      description: 'Ms. Hirushi Dilpriya',
                      additionalText: 'Temporary Lecturer',
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                // Close Button
                /*
                ElevatedButton(
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
