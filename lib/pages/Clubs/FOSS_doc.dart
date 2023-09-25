import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FOSSDoc extends StatelessWidget {
  const FOSSDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
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
                  'assets/images/foss.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(width: 8),
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
                    text: '\nDescription\n',
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
                        'he idea of Free Open Source Software as we now know it began with the development in the early 1980s of the concept of "free software" by Richard Stallman.\n\nRichard went on to create the GNU project and Free Software Foundation to further his vision, not to mention some pretty good software.It took several more decades, but beginning in the early 2000s it became clear to most people that the free software vision was consolidating mind share around the world.\n\nFree, open-source operating systems such as GNU, Linux and BSD are widely utilized today, powering millions of servers, desktops, smartphones (e.g. Google Android), and other devices. Free software licenses and open-source licenses are used in many software packages.\n',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      onPressed: () {
                        _launchWebsite(); // Call a function to open the website
                      },
                      child: const Text(
                        'Join Now',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _launchWebsite() async {
    const url = 'https://www.fossnsbm.org/events/sfd-2023';
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
