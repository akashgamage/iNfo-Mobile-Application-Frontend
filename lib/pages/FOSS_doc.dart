import 'package:flutter/material.dart';

class FOSSDoc extends StatelessWidget {
  const FOSSDoc({super.key});

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
                  'images/foss.png', // Replace with your image asset path
                  width: 100, // Adjust the width as needed
                  height: 100, // Adjust the height as needed
                ),
                const SizedBox(
                    width: 8), // Adding some space between the image and text
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10, left: 30, top: 20),
                    child: Text(
                      'FOSS Community\nNSBM',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Description\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 1.56,
                    ),
                  ),
                  TextSpan(
                    text: 'T',
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
                        'he idea of Free Open Source Software as we now know it began with the development in the early 1980s of the concept of "free software" by Richard Stallman. Richard went on to create the GNU project and Free Software Foundation to further his vision, not to mention some pretty good software. It took several more decades, but beginning in the early 2000s it became clear to most people that the free software vision was consolidating mind share around the world.\nFree, open-source operating systems such as GNU, Linux and BSD are widely utilized today, powering millions of servers, desktops, smartphones (e.g. Google Android), and other devices. Free software licenses and open-source licenses are used in many software packages.\n',
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
