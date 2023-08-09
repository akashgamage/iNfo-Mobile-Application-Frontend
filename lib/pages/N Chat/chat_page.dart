// import 'package:chat_bot/pages/speech_bubble.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_animator/widgets/sliding_entrances/slide_in_up.dart';

// class ChatMessage {
//   final String text;
//   final bool isUserMessage;
//   final DateTime timestamp;

//   ChatMessage({
//     required this.text,
//     required this.isUserMessage,
//     required this.timestamp,
//   });
// }

// class ChatbotPage extends StatefulWidget {
//   @override
//   _ChatbotPageState createState() => _ChatbotPageState();
// }

// class _ChatbotPageState extends State<ChatbotPage> {
//   final TextEditingController _textController = TextEditingController();
//   List<ChatMessage> _messages = [];

//   Map<String, String> _commandResponses = {
//     'hi': 'Hello!',
//     'how are you': 'I am fine, thank you!',
//     'what is your name': 'I am a chatbot!',
//   };

//   void _sendMessage(String message) {
//     _textController.clear();
//     setState(() {
//       _messages.add(ChatMessage(
//         text: message,
//         isUserMessage: true,
//         timestamp: DateTime.now(),
//       ));
//       _handleCommand(message.toLowerCase());
//     });
//   }

//   void _handleCommand(String command) {
//     for (var key in _commandResponses.keys) {
//       if (command.contains(key)) {
//         setState(() {
//           _messages.add(ChatMessage(
//             text: _commandResponses[key]!,
//             isUserMessage: false,
//             timestamp: DateTime.now(),
//           ));
//         });
//         return;
//       }
//     }

//     setState(() {
//       _messages.add(ChatMessage(
//         text: "I'm sorry, I don't understand.",
//         isUserMessage: false,
//         timestamp: DateTime.now(),
//       ));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         title: _buildAppBarTitle(),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _messages.length,
//               itemBuilder: (context, index) {
//                 return SlideInUp(
//                   // Use SlideInUp here
//                   child: SpeechBubble(
//                     text: _messages[index].text,
//                     isUserMessage: _messages[index].isUserMessage,
//                     timestamp: _messages[index].timestamp,
//                   ),
//                 );
//               },
//             ),
//           ),
//           _buildInputArea(),
//         ],
//       ),
//     );
//   }

//   Widget _buildAppBarTitle() {
//     return Expanded(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             'assets/chat_active.png',
//             height: 24,
//             width: 24,
//           ),
//           SizedBox(width: 8),
//           Text(
//             'iNfo',
//             style: TextStyle(
//               color: Colors.blue,
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildChatBubbleWithAnimation(ChatMessage message) {
//     return SlideInUp(
//       child: SpeechBubble(
//         text: message.text,
//         isUserMessage: message.isUserMessage,
//         timestamp: message.timestamp,
//       ),
//     );
//   }

//   Widget _buildChatBubble(ChatMessage message) {
//     final isUserMessage = message.isUserMessage;
//     final alignment =
//         isUserMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start;
//     final color = isUserMessage ? Colors.blue : Color(0xFF9C94FF);
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: alignment,
//         children: [
//           Card(
//             color: color,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8.0),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 message.text,
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//           SizedBox(height: 4),
//           Text(
//             _formatTimestamp(message.timestamp),
//             style: TextStyle(color: Colors.grey, fontSize: 12),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildInputArea() {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: Offset(0, 3),
//           ),
//         ],
//       ),
//       margin: const EdgeInsets.all(8.0),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//         child: Row(
//           children: [
//             Expanded(
//               child: TextField(
//                 controller: _textController,
//                 onSubmitted: _sendMessage,
//                 decoration: InputDecoration(
//                   hintText: 'Message',
//                   hintStyle: TextStyle(color: Colors.blue),
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//             IconButton(
//               onPressed: () => _sendMessage(_textController.text),
//               icon: Image.asset(
//                 'assets/send_inactive.png',
//                 height: 24,
//                 width: 24,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   String _formatTimestamp(DateTime timestamp) {
//     return '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}';
//   }
// }
