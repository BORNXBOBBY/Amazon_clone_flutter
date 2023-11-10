import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import 'Home.dart';
import 'MyCart.dart';
import 'MyMenu.dart';
import 'MyMore.dart';
import 'MyProfile.dart';


class AmazonHomePage extends StatefulWidget {
  @override
  _AmazonHomePageState createState() => _AmazonHomePageState();
}

class _AmazonHomePageState extends State<AmazonHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Home(),
    MyProfile(),
    MyMore(),
    MyCart(),
    MyMenu()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          // Update the selected index when a tab is pressed
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more, color: Colors.black),
            label: 'More',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.black),
            label: 'Menu',
          ),
        ],
        selectedItemColor: Colors.pinkAccent,
      ),
    );
  }
}
