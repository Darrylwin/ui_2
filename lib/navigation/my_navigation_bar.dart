import 'package:flutter/material.dart';
import 'package:myapp/pages/education_page.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/menu_page.dart';
import 'package:myapp/pages/message_page.dart';
import 'package:myapp/pages/profile_page.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<MyNavigationBar> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    EducationPag(),
    MenuPage(),
    MessagePage(),
    ProfilePage(),
  ];

  void _navigationPages(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          onTap: _navigationPages,
          elevation: 30,
          backgroundColor: Color.fromARGB(251, 11, 2, 63),
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_rounded), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home"),
          ],
          iconSize: 30,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.5),
        ),
      ),
    );
  }
}
