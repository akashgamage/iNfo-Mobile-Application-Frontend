import 'package:flutter/material.dart';

import 'info_card.dart';


class NS extends StatelessWidget {
  const NS({super.key});

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
                  'assets/NS/NS.jpg',
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
                      imagePath: 'assets/NS/mr.chamindra.jpg',
                      description: 'Mr. Chamindra Attanayake',
                      additionalText: 'Head / Senior Lecturer',
                    ),
                    InfoCard(
                      imagePath: 'assets/NS/mr.chamara.jpg',
                      description: 'Mr. Chamara Disanayake',
                      additionalText: 'Senior Lecturer',
                    ),
                    InfoCard(
                      imagePath: 'assets/NS/mr.dilhara.jpg',
                      description: 'Mr. Dilhara Batan Arachchige',
                      additionalText: 'Lecturer',
                    ),
                    InfoCard(
                      imagePath: 'assets/NS/mr.isuru.jpg',
                      description: 'Mr. Isuru Sri Bandara',
                      additionalText: 'Lecturer',
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
