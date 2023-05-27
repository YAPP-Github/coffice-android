import 'package:flutter/material.dart';

import 'saved_page.dart';
import 'setting_page.dart';
import 'home_page.dart';
import 'search_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NavigationPageState();
  }
}

class _NavigationPageState extends State<NavigationPage> {
  final List<Widget> _widgets = [
    const HomePage(),
    const SearchPage(),
    const SavedPage(),
    const SettingPage(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgets[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black26,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
