import 'package:flutter/material.dart';

class VicDocPage extends StatelessWidget {
  const VicDocPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8, // Set the desired
      // color: Colors.white,
      padding: const EdgeInsets.all(18),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Degree Programs\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: 'Victoria University - Australia\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: -0.1,
                      ),
                    ),
                    TextSpan(
                      text:
                          '•\t Bachelor of Business: Banking and Finance & Financial Risk Management\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 3,
                      ),
                    ),
                    TextSpan(
                      text:
                          '• \tBachelor of Business: Management and Innovation & Supply Chain and Logistics Management\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 1.7,
                      ),
                    ),
                    TextSpan(
                      text:
                          '• \tBachelor of Information Technology (Major in Cyber Security)\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ContentB and ContentC widgets will have similar structures as ContentA

