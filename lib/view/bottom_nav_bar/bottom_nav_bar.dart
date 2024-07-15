import 'package:carpet_craft/utils/constatnts.dart';
import 'package:flutter/material.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
   
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_scanner_outlined,
            ),
            label: 'Scan Reciept',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.payments,
            ),
            label: 'Scan&Request',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kblue,
        onTap: _onItemTapped,
        unselectedFontSize: 12.0,
        elevation: 8.0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 30.0,
      ),
    );
  }
}
