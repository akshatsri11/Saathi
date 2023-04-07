import 'package:flutter/material.dart';
import 'package:saathi/location.dart';
import 'package:saathi/notification.dart';
import 'package:saathi/screens/profile.dart';

import 'dashboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screenOptions = <Widget>[
    const DashBoardScreen(),
    const DashBoardScreen(),
        location(),
    const notification(),
    const ProfileScreen()
  ];
  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
                size: 40,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
                color: Colors.black,
                size: 40,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.navigation,
                color: Colors.black,
                size: 40,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                
                Icons.notifications,
              
                color: Colors.black,
                size: 40,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
                color: Colors.black,
                size: 40,
              ),
              label: ''),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTapItem,
      ),
    );
  }
}
