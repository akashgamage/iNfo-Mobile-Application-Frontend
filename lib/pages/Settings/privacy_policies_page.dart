import 'package:flutter/material.dart';

class PrivacyPoliciesPage extends StatelessWidget {
  const PrivacyPoliciesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy & Policies'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Privacy & Policies Content...',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}
