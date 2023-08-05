import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:info_mobile_application/pages/Clubs/CSSE_doc.dart';

import 'Clubs/CSSL_doc.dart';
import 'Clubs/FOSS_doc.dart';
import 'Documentations/Ply_doc.dart';
import 'Documentations/UGC_doc.dart';
import 'Documentations/Vic_doc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentSliderIndex = 0;
  final CarouselController _carouselController = CarouselController();

  String _selectedBatch = 'Select';
  String _selectedUniversity = 'Select';
  String _selectedDegreeProgram = 'Select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            // Event Slider ----------------------------------------------------
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 278,
                width: double.infinity,
                child: Column(
                  children: [
                    GestureDetector(
                      onHorizontalDragEnd: (details) {
                        if (details.primaryVelocity! > 0) {
                          // Swipe right - move to the previous slide
                          _carouselController.previousPage();
                        } else if (details.primaryVelocity! < 0) {
                          // Swipe left - move to the next slide
                          _carouselController.nextPage();
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5,
                              )
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: CarouselSlider(
                            carouselController: _carouselController,
                            options: CarouselOptions(
                              // Adjust the height based on the screen size
                              viewportFraction: 1.0,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              pauseAutoPlayOnTouch: true,
                              enlargeCenterPage: true,
                              enableInfiniteScroll: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentSliderIndex = index;
                                });
                              },
                            ),
                            items: [
                              // Add your image widgets here for the slider
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset('assets/images/CN.png',
                                      fit: BoxFit.cover)),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset('assets/images/CSSE.png',
                                      fit: BoxFit.cover)),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset('assets/images/DCN.png',
                                      fit: BoxFit.cover)),
                              // We can add more images as needed
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                        height:
                            20), // Adjust the space between slider and indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                          (index) =>
                              _buildDotIndicator(index == _currentSliderIndex)),
                    ),
                  ],
                ),
              ),
            ),

            // Lecture Search --------------------------------------------------
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 340,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: const Color.fromARGB(255, 224, 242, 255),
                  boxShadow: [
                    BoxShadow(
                      color:
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          "Today's Lectures",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),

                      // Batch & University Dropdowns
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Batch Dropdown
                          _buildDropdown(
                            label: 'Batch',
                            value: _selectedBatch,
                            items: [
                              'Select',
                              '19.2',
                              '20.1',
                              '20.2',
                              '20.3',
                              '21.1',
                              '21.2',
                              '22.1',
                              '22.2',
                              '23.1',
                              '23.2',
                              '23.3'
                            ],
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedBatch = newValue ??
                                    'Select'; // Default value if null
                              });
                            },
                          ),

                          // University Dropdown
                          _buildDropdown(
                            label: 'University',
                            value: _selectedUniversity,
                            items: [
                              'Select',
                              'NSBM - UGC - SL',
                              'Plymouth U - UK',
                              'Victoria U - Aus',
                            ],
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedUniversity = newValue ??
                                    'Select'; // Default value if null
                              });
                            },
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Degree Program Dropdown
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: SizedBox(
                              width: double.infinity,
                              child: _buildDropdown(
                                label: 'Degree Program',
                                value: _selectedDegreeProgram,
                                items: [
                                  'Select',
                                  'BSc (Honours) in Data Science',
                                  'BSc (Hons) Computer Networks',
                                  'BSc (Hons) Computer Security',
                                  'Bachelor of Information Technology\n(Major in Cyber Security)',
                                  'BSc (Hons) Computer Science',
                                  'BSc (Hons) Software Engineering',
                                  'BSc (Hons) Technology Management   ',
                                  'BSc in Management Information\nSystems (Special)',
                                  'Foundation Programme for\nBachelors Degree',
                                ],
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedDegreeProgram = newValue ??
                                        'Select'; // Default value if null
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 16.0,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  backgroundColor: const Color(0xFF007AFF),
                                ),
                                child: const Row(
                                  // Add a Row to display icon and text side by side
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      // Search icon
                                      Icons.search,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    SizedBox(
                                        width:
                                            8), // Space between icon and text
                                    Text(
                                      'Search',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ],
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
            ),

            // 4 Department Buttons --------------------------------------------
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(50, 50, 50, 50),
                      // offset: Offset(0.0, 0.0),
                      blurRadius: 5,
                      // spreadRadius: 1,
                      // inset: true,
                    ),
                    BoxShadow(
                      color: Color.fromARGB(50, 50, 50, 50),
                      // offset: Offset(0.0, 0.0),
                      blurRadius: 5,
                      // spreadRadius: 1,
                      // inset: true,
                    ),
                  ],
                  // gradient: LinearGradient(
                  //   colors: [
                  //     const Color.fromARGB(255, 255, 255, 255),
                  //     const Color.fromARGB(255, 255, 255, 255),
                  //     const Color.fromARGB(255, 255, 255, 255),
                  //     const Color.fromARGB(255, 255, 255, 255),
                  //   ],
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  // ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Departments',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection:
                            Axis.horizontal, // Horizontal scrolling
                        children: [
                          // Computer Science & Software Engineering Button
                          _buildDepartmentButtons(
                            imageAsset: 'assets/images/cssedepartment.png',
                            description: 'Department of',
                            title: 'Computer Science &\nSoftware Engineering',
                          ),

                          // Information & System Science Button
                          _buildDepartmentButtons(
                            imageAsset: 'assets/images/issdepartment.png',
                            description: 'Department of',
                            title: 'Information &\nSystem Science',
                          ),

                          // Data Science Button
                          _buildDepartmentButtons(
                            imageAsset: 'assets/images/dsdepartment.png',
                            description: 'Department of',
                            title: 'Data Science',
                          ),

                          // Network & Security Button
                          _buildDepartmentButtons(
                            imageAsset: 'assets/images/dnsdepartment.png',
                            description: 'Department of',
                            title: 'Network & Security',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),

            // 2 Long Buttons --------------------------------------------------
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _buildLongButton(
                        imageAsset: 'assets/images/documentation.png',
                        description: 'Find Documentations\nfor Your Courses',
                        title: 'Documentations',
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: _buildLongButton2(
                        imageAsset: 'assets/images/clubs_societies.png',
                        description: 'Explore\nClubs & Societies',
                        title: 'Clubs & Societies',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget _buildDotIndicator(bool isActive) {
    const activeColor = Color(0xFF007AFF);
    const inactiveColor = Colors.grey;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 10.0,
      width: isActive ? 24.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? activeColor : inactiveColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }

  Widget _buildDropdown({
    required String label,
    required String value,
    required List<String> items,
    required void Function(String?) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: DropdownButton<String>(
              value: value,
              onChanged: onChanged,
              items: items.map<DropdownMenuItem<String>>((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDepartmentButtons({
    required String imageAsset,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xFF007AFF),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(16),
            splashColor: const Color.fromARGB(255, 255, 255, 255),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 5),

                // Description and Title
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(description,
                            style: const TextStyle(
                              color: Colors.white,
                            )),
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Image
                Column(
                  children: [
                    Image.asset(imageAsset, width: 200, height: 200),
                  ],
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLongButton({
    required String imageAsset,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xFF007AFF),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () { //on tap function.... change this if need
                showModalBottomSheet(
                  //enableDrag: true, 
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 140,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(
                            bottom: 40, left: 8, right: 8, top: 40),
                        children: [
                          _buildButton1(context, 'UGC Approved'),
                          _buildButton2(context,'Plymouth University'),
                          _buildButton3(context,'Victoria University'),
                        ],
                      ),
                    );
                  },
                );
            },
            borderRadius: BorderRadius.circular(16),
            splashColor: const Color.fromARGB(255, 255, 255, 255),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  // Image on the left
                  Image.asset(
                    imageAsset,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 20), // Space between the image and text

                  // Title and Description
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          description,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  // Right-side arrow icon
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


   Widget _buildLongButton2({
    required String imageAsset,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xFF007AFF),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
               showModalBottomSheet(
                  //enableDrag: true, 
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 140,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(
                            bottom: 40, left: 8, right: 8, top: 40),
                        children: [
                          _buildButton4(context, 'CSSE Circle'),
                          _buildButton5(context,'CSSL GenZ NSBM'),
                          _buildButton6(context,'FOSS Community'),
                        ],
                      ),
                    );
                  },
                );
            },
            borderRadius: BorderRadius.circular(16),
            splashColor: const Color.fromARGB(255, 255, 255, 255),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  // Image on the left
                  Image.asset(
                    imageAsset,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 20), // Space between the image and text

                  // Title and Description
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          description,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  // Right-side arrow icon
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 24,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }




// Bottom Sheet method for longButtons
    void _showBottomSheet(BuildContext context, Widget contentWidget) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DraggableScrollableActuator(child: contentWidget);
      },
    );
  }

   Widget _buildButton1(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 255, 255, 255),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: const BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 1.0,
              ),
            ),
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 50, 128, 246),
          ),
        ),
        onPressed: () {
           _showBottomSheet(context, UGCDocPage());
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const UGCDocPage()),
          // );
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }


  //Button for plymouth Approved

  Widget _buildButton2(BuildContext context,String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 255, 255, 255),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: const BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 1.0,
              ),
            ),
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 50, 128, 246),
          ),
        ),
        onPressed: () {
         _showBottomSheet(context, PlyDocPage());

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const UGCDocPage()),
          // );
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }


//Button for Victoria Approved

  Widget _buildButton3(BuildContext context,String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 255, 255, 255),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: const BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 1.0,
              ),
            ),
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 50, 128, 246),
          ),
        ),
        onPressed: () {
         _showBottomSheet(context, VicDocPage());

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const UGCDocPage()),
          // );
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }


   //Button for CSSE Circle
   Widget _buildButton4(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 255, 255, 255),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: const BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 1.0,
              ),
            ),
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 50, 128, 246),
          ),
        ),
        onPressed: () {
           _showBottomSheet(context, CSSEDoc());
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const UGCDocPage()),
          // );
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }


//Button for CCSL Circle
   Widget _buildButton5(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 255, 255, 255),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: const BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 1.0,
              ),
            ),
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 50, 128, 246),
          ),
        ),
        onPressed: () {
           _showBottomSheet(context, CSSLDoc());
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const UGCDocPage()),
          // );
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

//Button for FOSS Community
 Widget _buildButton6(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 255, 255, 255),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: const BorderSide(
                color: Color.fromARGB(255, 0, 0, 0),
                width: 1.0,
              ),
            ),
          ),
          overlayColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 50, 128, 246),
          ),
        ),
        onPressed: () {
           _showBottomSheet(context, FOSSDoc());
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const UGCDocPage()),
          // );
        },
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

}
