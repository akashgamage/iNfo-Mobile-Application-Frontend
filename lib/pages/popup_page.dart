import 'package:flutter/material.dart';

class PopupPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String buttonLabel;
  final VoidCallback?
      onButtonPressed; // Add a parameter for the button callback

  const PopupPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.buttonLabel,
    this.onButtonPressed, // Include the button callback
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(imageUrl),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 16.0),
                    child: Text(description),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed:
                            onButtonPressed, // Use the provided button callback
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: Text(buttonLabel),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
