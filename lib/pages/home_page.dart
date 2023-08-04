import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 300,
                width: double.infinity,
                color: Colors.blue,
              ),
            ),

            // 2 Long Buttons --------------------------------------------------
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 300,
                width: double.infinity,
                color: Colors.blue,
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
}
