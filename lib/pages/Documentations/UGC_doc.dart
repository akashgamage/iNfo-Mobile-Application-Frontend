import 'package:flutter/material.dart';

class UGCDocPage extends StatelessWidget {
  const UGCDocPage({super.key});
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
        scrollDirection: Axis.horizontal,
        child:  SingleChildScrollView(
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
                      text: 'UGC Approved - Offered by NSBM\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                       height:-0.1,
                      ),
                    ),
                    TextSpan(
                      text: '•\t BM (Honors) in Business Analytics\n',
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
                      text: '• \tBM (Honors) in Applied Economics\n',
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
                      text: '• \tBBM (Hons) Tourism, Hospitality & Events\n',
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
                      text: '• \tBSc in Multimedia\n',
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
                      text: '• \tBA in Business Communication\n',
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
                      text: '• \tBM (Hons) in Accounting and Finance\n',
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
                      text: '• \tBM (Hons) in International Business\n',
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
                          '• \tBSc in Business Management (Industrial Management) (Special)\n',
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
                          '• \tBSc in Business Management (Project Management) (Special)\n',
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
                          '• \tBSc in Business Management (Logistics Management) (Special)\n',
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
                          '• \tBSc in Business Management (Human Resource Management) (Special)\n',
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
                      text: '• \tBachelor of Laws (Honours)\n',
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
                      text: '• \tBSc (Hons) in Data Science\n',
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
                      text: '• \tBSc (Hons) in Computer Networks\n',
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
                      text: '• \tBSc (Hons) in Computer Science\n',
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
                      text: '• \tBSc (Hons) in Software Engineering\n',
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
                      text: '• \tBSc in Management Information Systems (Special)\n',
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

