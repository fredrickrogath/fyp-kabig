import 'package:flutter/material.dart';
import 'package:fyp/pages/homepage.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'pages/data.dart';

class PageDeterminer extends StatefulWidget {
  PageDeterminer({Key? key}) : super(key: key);

  @override
  _PageDeterminerState createState() => _PageDeterminerState();
}

class _PageDeterminerState extends State<PageDeterminer> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const HomePage(),
    const Data(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Page 2',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}