import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:info_mobile_application/pages/login_page.dart';
// import 'package:info_mobile_application/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCmt198V0UUyLiDpCirvO6dJ0bv5-PdUN8",
        appId: "1:574293638984:web:737c7008a26ae11e63bd7d",
        messagingSenderId: "574293638984",
        projectId: "info-app-f4289"),
  );

  runApp(
    DevicePreview(
     builder: (context) => MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
