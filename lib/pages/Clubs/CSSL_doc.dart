import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CSSLDoc extends StatelessWidget {
  const CSSLDoc({super.key});

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
                  'assets/images/cssl.png', 
                  width: 130, 
                  height: 100, 
                ),
                const SizedBox(
                    width: 8), 
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
                          'SBM GenZ student chapter was established on 19th July 2023 and since we’ve been consistently working to promote professionalism among all our members under the experienced guidance of our instructor panel.\n\nOur mentorship programs connect students with experienced professionals who offer guidance, share industry insights, and provide career advice for informed career decisions and desired trajectories.\n\n ',
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
                        _launchWebsite();
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
    const url =
        'https://cssl.nsbm.ac.lk/'; 
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
