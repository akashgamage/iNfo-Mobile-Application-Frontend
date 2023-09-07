import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

class SpeechBubble extends StatelessWidget {
  final String text;
  final bool isUserMessage;
  final DateTime timestamp;

  const SpeechBubble({
    super.key,
    required this.text,
    required this.isUserMessage,
    required this.timestamp,
    required CrossAxisAlignment alignment,
  });

  @override
  Widget build(BuildContext context) {
    final isUserMessage = this.isUserMessage;
    final alignment =
        isUserMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final color = isUserMessage
        ? const Color.fromARGB(255, 7, 57, 97)
        : const Color.fromARGB(255, 7, 57, 97);

    return Column(
      crossAxisAlignment: alignment,
      children: [
        SlideInUp(
          child: Card(
            color: color,
            shape: SpeechBubbleShape(isUserMessage: isUserMessage),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          _formatTimestamp(timestamp),
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ],
    );
  }

  String _formatTimestamp(DateTime timestamp) {
    return '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}';
  }
}

class SpeechBubbleShape extends RoundedRectangleBorder {
  final bool isUserMessage;

  const SpeechBubbleShape({required this.isUserMessage})
      : super(
          borderRadius: isUserMessage
              ? const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                )
              : const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
        );
}
