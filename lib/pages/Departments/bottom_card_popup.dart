// import 'package:flutter/material.dart';

// class BottomCardPopup extends StatelessWidget {
//   final String imagePath;
//   final String description;
//   final String additionalText;

//   const BottomCardPopup({
//     super.key,
//     required this.imagePath,
//     required this.description,
//     required this.additionalText,
//   });

//   @override
//   Widget build(BuildContext context) {
//     double screenwidth = MediaQuery.of(context).size.width;

//     return SingleChildScrollView(
//       // Wrap the content in SingleChildScrollView
//       child: Container(
//         width: screenwidth * 0.5,
//         padding: const EdgeInsets.all(16.0),
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(24.0),
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               // Heading Image
//               Image.asset(
//                 imagePath,
//                 fit: BoxFit.cover,
//               ),
//               const SizedBox(height: 8.0),
//               // Info Card
//               _buildInfoCard(
//                 description: description,
//                 additionalText: additionalText,
//               ),
//               const SizedBox(height: 16.0),
//               /*
//               // Close Button
//               ElevatedButton(
//                 onPressed: () {
//                   // To close the popup on button click.
//                   Navigator.of(context).pop();
//                 },
//                 child: const Text('Close'),
//               ),
//               */
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoCard({
//     required String description,
//     required String additionalText,
//   }) {
//     return Card(
//       color: const Color.fromRGBO(218, 215, 255, 0.50),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12.0),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 CircleAvatar(
//                   backgroundImage: AssetImage(imagePath),
//                   radius: 30,
//                 ),
//                 const SizedBox(width: 16.0),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         description,
//                         style: const TextStyle(fontSize: 16),
//                       ),
//                       const SizedBox(height: 8.0),
//                       Text(
//                         additionalText,
//                         style: const TextStyle(fontSize: 14),
//                       ),
//                     ],
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Add button action here.
//                   },
//                   child: const Text('Email'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
