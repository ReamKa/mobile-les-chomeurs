import 'package:chomeurs/Statistique/page_statistique.dart';
import 'package:flutter/material.dart';

//import 'package:bottom_navigation_bar/home_screen.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  // ignore: prefer_final_fields
  List<Widget> _widgetOptions = <Widget>[
    PageStatistique(),
    const Text('Save Screen'),
    const Text('Setting Screen'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(-6380890),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_column),
            title: Text('Statistique'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            title: Text('Sauvegarder'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Paramètre'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
