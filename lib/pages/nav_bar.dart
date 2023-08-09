import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'pages/chat_page.dart';
import 'home_page.dart';
// import 'notifications_page.dart';
// import 'settings_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  NavBarState createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        controller: _pageController,
        children: screens, // Add PageController to control PageView
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(displayWidth * .05),
        height: displayWidth * .155,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(0, 0, 0, 0).withOpacity(.1),
              blurRadius: 10,
              offset: const Offset(0, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                _pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 1),
                    curve: Curves.easeInOut);
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? displayWidth * .12 : 0,
                    width: index == currentIndex ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? Colors.blueAccent.withOpacity(.2)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex ? listOfStrings[index] : '',
                              style: const TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .03 : 20,
                          ),
                          _bottomNavBarIcons[
                              index], // Replace Icon with _bottomNavBarIcons[index]
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<Image> _bottomNavBarIcons = [
    Image.asset('assets/icons/home.png', width: 24, height: 24),
    Image.asset('assets/icons/chat.png', width: 24, height: 24),
    Image.asset('assets/icons/bell.png', width: 24, height: 24),
    Image.asset('assets/icons/settings.png', width: 24, height: 24),
  ];

  List<String> listOfStrings = [
    'Home',
    'N Chat',
    'News',
    'Settings',
  ];

  List<Widget> screens = [
    const HomePage(),
    // ChatbotPage(),
    // const NotificationsPage(),
    // const SettingsPage(),
  ];

  final PageController _pageController =
      PageController(); // Add PageController instance
}
