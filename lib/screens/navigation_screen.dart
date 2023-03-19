// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:kreedy_assign/screens/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  late int tabIndex;
  NavigationScreen({super.key, this.tabIndex = 2});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  void changeTabIndex(int index) {
    setState(() {
      widget.tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: widget.tabIndex,
          children: const [
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.black,
        child: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          onTap: changeTabIndex,
          backgroundColor: Colors.black,
          iconSize: 15.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: widget.tabIndex,
          items: [
            _bottomNavigationBarItem(
              icon: Icons.home,
              label: "Home",
            ),
            _bottomNavigationBarItem(
              icon: Icons.grass,
              label: "Fire",
            ),
            _bottomNavigationBarItem(
              icon: Icons.calendar_today_outlined,
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/person.png",
                height: 30,
                width: 30,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        size: 30,
        color: Colors.grey,
      ),
      activeIcon: Icon(icon, size: 32, color: Colors.grey),
      label: label,
    );
  }
}
