import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class PopupPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String buttonLabel;
  final VoidCallback? onButtonPressed;
  const PopupPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.buttonLabel,
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final backgroundColor = themeProvider.currentTheme.scaffoldBackgroundColor;
    return Dialog(
      backgroundColor: backgroundColor,
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
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: themeProvider
                            .currentTheme.textTheme.bodyText1?.color,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 16.0),
                    child: Text(
                      description,
                      style: TextStyle(
                        color: themeProvider
                            .currentTheme.textTheme.bodyText1?.color,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: onButtonPressed,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: Text(
                          buttonLabel,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
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
