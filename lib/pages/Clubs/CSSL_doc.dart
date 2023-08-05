import 'package:flutter/material.dart';

class CSSLDoc extends StatelessWidget {
  const CSSLDoc({super.key});

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
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/cssl.png', // Replace with your image asset path
                  width: 130, // Adjust the width as needed
                  height: 100, // Adjust the height as needed
                ),
                const SizedBox(
                    width: 8), // Adding some space between the image and text
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10, left: 30, top: 30),
                    child: Text(
                      'CSSL GenZ\nNSBM',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15, top: 2),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Description\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 2.56,
                      ),
                    ),
                    TextSpan(
                      text: 'N',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.79,
                      ),
                    ),
                    TextSpan(
                      text:
                          'SBM GenZ student chapter was established on 19th July 2023 and since we’ve been consistently working to promote professionalism among all our members under the experienced guidance of our instructor panel. Our mentorship programs connect students with experienced professionals who offer guidance, share industry insights, and provide career advice for informed career decisions and desired trajectories.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Add more widgets or content below if needed.
            Padding(
              padding: const EdgeInsets.only(
                  left: 230, right: 20, bottom: 8, top: 1),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // padding: const EdgeInsets.symmetric(
                    //     horizontal: 20, vertical: 12),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Join Now!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
