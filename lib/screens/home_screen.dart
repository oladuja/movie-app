import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/downloads_screen.dart';
import 'package:flutter_application_1/screens/main_screen.dart';
import 'package:flutter_application_1/screens/profile_screen.dart';
import 'package:flutter_application_1/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          MainScreen(),
          SearchScreen(),
          DownloadsScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
            pageController.animateToPage(
              i,
              duration: const Duration(milliseconds: 150),
              curve: Curves.decelerate,
            );
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0XFFFFBB3B),
        unselectedItemColor: Colors.white,
        iconSize: 28,
        selectedLabelStyle: const TextStyle(fontSize: 8),
        unselectedLabelStyle: const TextStyle(fontSize: 8),
        backgroundColor: const Color(0XFF1A1A1A),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'SEARCH',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'DOWNLOADS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'PEOPLE',
          ),
        ],
      ),
    );
  }
}
