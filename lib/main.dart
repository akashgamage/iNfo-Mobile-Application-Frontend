import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:info_mobile_application/pages/home_page.dart';
import 'pages/signup_page.dart';

void main() => runApp(
      DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) => MyApp(),
          builder: (context) => SignUp() // Wrap your app
          ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
