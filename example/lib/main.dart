import 'package:flutter/material.dart';
import 'package:flying_bottom_navigation_bar/flying_bottom_navigation_bar.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Navigation Bar')),
      body: Center(child: Text('Current Index: $currentIndex')),
      bottomNavigationBar: FlyingNavigationBar(
        selectedPageIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        borderRadius: 30.0,
        navItems: [
          NavItem(icon: Icons.home, index: 0, size: 30, label: 'Home', selectedPageIndex: currentIndex, onTap: (index) {}),
          NavItem(icon: Icons.add, index: 1, size: 30, label: 'Add', selectedPageIndex: currentIndex, onTap: (index) {}),
          NavItem(icon: Icons.person, index: 2, size: 30, label: 'Profile', selectedPageIndex: currentIndex, onTap: (index) {}),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: MyApp()));
