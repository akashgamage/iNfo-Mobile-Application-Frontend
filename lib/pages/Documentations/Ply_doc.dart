import 'package:flutter/material.dart';

class PlyDocPage extends StatelessWidget {
  const PlyDocPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 
           MediaQuery.of(context).size.height * 0.8, // Set the desired
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
        scrollDirection: Axis.vertical,
        child:  SingleChildScrollView(
          scrollDirection: Axis.horizontal,
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
                      text: 'Plymouth University - United Kingdom\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                       height:-0.1,
                      ),
                    ),
                    TextSpan(
                      text: '• \tBSc (Hons) Business Communication\n',
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
                      text: '• \tBSc (Hons) Events, Tourism and Hospitality Management\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        //decoration: TextDecoration.underline,
                    height:1.7,
                      ),
                    ),
                    TextSpan(
                      text: '• \tBSc (Hons) Operations and Logistics Management\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                    TextSpan(
                      text: '• \tBSc (Hons) Marketing Management\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                    TextSpan(
                      text: '• \tBSc (Hons) Accounting and Finance\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                    TextSpan(
                      text: '• \tBSc (Hons) International Management and Business\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                    TextSpan(
                      text: '• \tBSc (Hons) Technology Management\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                    TextSpan(
                      text:
                          '• \tBSc (Hons) Computer Science\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                    TextSpan(
                      text:
                          '• \tBSc (Hons) Computer Networks\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                    TextSpan(
                      text:
                          '• \tBSc (Hons) Computer Security\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                    TextSpan(
                      text:
                          '• \tBSc (Hons) Software Engineering\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                    TextSpan(
                      text: '• \tBA (Hons) in Interior Design\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                     TextSpan(
                      text:
                       '• \tBSc (Hons) Quantity Surveying\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                     TextSpan(
                      text: '• \tBSc (Hons) Psychology\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                     TextSpan(
                      text: '• \tBSc (Hons) Nursing\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                     TextSpan(
                      text: '• \tBSc (Hons) Biomedical Science\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        // decoration: TextDecoration.underline,
                        height: 2,
                      ),
                    ),
                     TextSpan(
                      text: '• \tBSc (Hons) Nursing – Top up\n',
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

