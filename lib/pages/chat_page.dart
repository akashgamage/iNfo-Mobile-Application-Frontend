import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

import 'package:info_mobile_application/pages/speech_bubble.dart';

class ChatMessage {
  final String text;
  final bool isUserMessage;
  final DateTime timestamp;

  ChatMessage({
    required this.text,
    required this.isUserMessage,
    required this.timestamp,
  });
}

class ChatbotPage extends StatefulWidget {
  const ChatbotPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatbotPageState createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = [];

  Future<void> _sendMessage(String message) async {
    _textController.clear();
    setState(() {
      _messages.add(ChatMessage(
        text: message,
        isUserMessage: true,
        timestamp: DateTime.now(),
      ));
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        // Mock bot response
        String botResponse = _generateMockBotResponse(message);
        _messages.add(ChatMessage(
          text: botResponse,
          isUserMessage: false,
          timestamp: DateTime.now(),
        ));
      });
    });

    /**
     * 
     * I've commented out the OpenAI API calling code as it isn't functioning properly.
     * And replaced the bot responses with some mock data.
     * 
     */

    // final response = await _sendApiRequest(message);
    // if (response != null) {
    //   setState(() {
    //     _messages.add(ChatMessage(
    //       text: response['choices'][0]['message']['content'],
    //       isUserMessage: false,
    //       timestamp: DateTime.now(),
    //     ));
    //   });
    // }
  }

  String _generateMockBotResponse(String userMessage) {
    // Mock bot response based on user message
    if (userMessage.toLowerCase().contains('hi')) {
      return 'Hello! How can I assist you?';
    } else if (userMessage.toLowerCase().contains('how are you')) {
      return "I'm just a bot, but I'm here to help!";
    } else if (userMessage.toLowerCase().contains('what is your name')) {
      return "I'm iNfo chatbot!";
    } else if (userMessage.contains("admissions")) {
      return "Our admissions office is open from Monday to Friday, 9 AM to 5 PM.";
    } else if (userMessage.contains("courses")) {
      return "We offer a wide range of undergraduate and graduate courses. You can find more information on our website.";
    } else if (userMessage.contains("tuition")) {
      return "Tuition fees vary depending on the program. You can check the tuition fees on our website.";
    } else if (userMessage.contains("application process")) {
      return "The application process involves filling out an online application form and submitting the required documents.";
    } else if (userMessage.contains("scholarships")) {
      return "We offer various scholarships for eligible students. You can find more details on our scholarship programs on our website.";
    } else if (userMessage.contains("campus tours")) {
      return "We offer campus tours every week. You can schedule a tour on our website.";
    } else if (userMessage.contains("academic calendar")) {
      return "Our academic calendar can be found on our website, which includes important dates for the semester.";
    } else if (userMessage.contains("contact information")) {
      return "You can contact our university at contact@university.edu or call us at +1-123-456-7890.";
    } else if (userMessage.contains("library hours")) {
      return "The library is open from 8 AM to 10 PM on weekdays and 10 AM to 6 PM on weekends.";
    } else if (userMessage.contains("sports facilities")) {
      return "We have state-of-the-art sports facilities including a gym, tennis courts, and a swimming pool.";
    } else if (userMessage.contains("faculty directory")) {
      return "You can find the faculty directory on our website to get contact information for professors.";
    } else if (userMessage.contains("career services")) {
      return "Our career services department provides support for students in finding internships and job opportunities.";
    } else if (userMessage.contains("housing options")) {
      return "We offer various housing options for students, including on-campus and off-campus housing. You can explore these options on our website.";
    } else if (userMessage.contains("student organizations")) {
      return "We have a wide range of student organizations for you to join. Check out our website for a list of clubs and activities.";
    } else if (userMessage.contains("graduation requirements")) {
      return "To graduate, you must complete all required courses and meet GPA requirements. Details can be found in the academic catalog.";
    } else if (userMessage.contains("international students")) {
      return "We welcome international students and provide support for visa, housing, and cultural integration.";
    } else if (userMessage.contains("alumni association")) {
      return "Our alumni association helps you stay connected with fellow graduates. Join our alumni network today!";
    } else {
      return "I'm sorry, I don't have a response for that.";
    }
  }

  // Future<Map<String, dynamic>?> _sendApiRequest(String message) async {
  //   final apiUrl =
  //       'https://api.openai.com/v1/engines/davinci-codex/completions';
  //   final headers = {
  //     'Content-Type': 'application/json',
  //     'Authorization': 'Bearer <KEY>',
  //   };

  //   final body = jsonEncode({
  //     'prompt': message,
  //     'max_tokens': 50, // Adjust as needed
  //   });

  //   final response =
  //       await http.post(Uri.parse(apiUrl), headers: headers, body: body);

  //   print('API Response: ${response.body}'); // Print API response

  //   if (response.statusCode == 200) {
  //     return jsonDecode(response.body);
  //   } else {
  //     print('API request failed with status code ${response.statusCode}');
  //     return null;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: _buildAppBarTitle(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildChatBubbleWithAnimation(_messages[index], index);
              },
            ),
          ),
          _buildInputArea(),
        ],
      ),
    );
  }

  Widget _buildAppBarTitle() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/chat_active.png',
            height: 24,
            width: 24,
          ),
          const SizedBox(width: 16),
          const Text(
            'iNfo',
            style: TextStyle(
              color: Color.fromARGB(255, 7, 57, 97),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatBubbleWithAnimation(ChatMessage message, int index) {
    final isUserMessage = message.isUserMessage;
    final alignment =
        isUserMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start;

    final prevMessage = index > 0 ? _messages[index - 1] : null;
    final prevMessageAlignment =
        prevMessage != null && prevMessage.isUserMessage
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start;

    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 4.0), // Add vertical padding
      child: Column(
        crossAxisAlignment: alignment,
        children: [
          SlideInUp(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SpeechBubble(
                text: message.text,
                isUserMessage: isUserMessage,
                timestamp: message.timestamp,
                alignment: alignment,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputArea() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.symmetric(
          horizontal: 16.0), // Add horizontal padding
      child: Row(
        children: [
          Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: _sendMessage,
              decoration: const InputDecoration(
                hintText: 'Message',
                hintStyle: TextStyle(color: Color.fromARGB(255, 7, 57, 97)),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            onPressed: () => _sendMessage(_textController.text),
            icon: Image.asset(
              'assets/send_inactive.png',
              height: 16,
              width: 16,
            ),
          )
        ],
      ),
    );
  }

  String _formatTimestamp(DateTime timestamp) {
    return '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}';
  }
}
