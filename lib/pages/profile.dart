import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 248, 247, 255),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 7, 57, 97),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    width: displayWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/Profile Pic.png',
                                width: 100, height: 100),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'name',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  ' umisID',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 16),
                            const Icon(
                              Icons.edit_note_rounded,
                              size: 32,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child: Text(
                                'Name',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 224, 242, 255),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as needed
                              ),
                              width: displayWidth,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 20.0),
                                child: Text(
                                  'name',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child: Text(
                                'UMIS ID',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 224, 242, 255),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as needed
                              ),
                              width: displayWidth,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 20.0),
                                child: Text(
                                  '12345',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child: Text(
                                'NSBM E-Mail',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 224, 242, 255),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as needed
                              ),
                              width: displayWidth,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 20.0),
                                child: Text(
                                  'email',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child: Text(
                                'Faculty',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 224, 242, 255),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as needed
                              ),
                              width: displayWidth,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 20.0),
                                child: Text(
                                  'Faculty of Computing',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child: Text(
                                'Degree Programme',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 224, 242, 255),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as needed
                              ),
                              width: displayWidth,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 20.0),
                                child: Text(
                                  'BSc (Hons) in Software Engineering',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child: Text(
                                'Offerd by',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 224, 242, 255),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as needed
                              ),
                              width: displayWidth,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 20.0),
                                child: Text(
                                  'NSBM',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child: Text(
                                'Intake',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 224, 242, 255),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as needed
                              ),
                              width: displayWidth,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 20.0),
                                child: Text(
                                  '21.1',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child: Text(
                                'Personal E-Mail',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 224, 242, 255),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as needed
                              ),
                              width: displayWidth,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 20.0),
                                child: Text(
                                  'example@gmail.com',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child: Text(
                                'Mobile Number',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 224, 242, 255),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as needed
                              ),
                              width: displayWidth,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 20.0),
                                child: Text(
                                  '070 123 4567',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child: Text(
                                'NIC/Passport Number',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 224, 242, 255),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as needed
                              ),
                              width: displayWidth,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 20.0),
                                child: Text(
                                  '1234567890',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20.0),
                              child: Text(
                                'Date of Birth',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 224, 242, 255),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Adjust the radius as needed
                              ),
                              width: displayWidth,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 20.0),
                                child: Text(
                                  '31.12.1996',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
