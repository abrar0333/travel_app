import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../constants/texts.dart';
import 'account_screen.dart';
import 'home_screen.dart';
import 'help_screen.dart';
import 'booking_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {

      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const BookingScreen(),
    const HelpScreen(),
    const MyAccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/icons/home_icon.png',
                color: _selectedIndex== 0 ?  mBlueColor:  subTileColor,
                width: 25,
                height: 25,
                fit: BoxFit.fill,
              ),
            ),
            label: labelHome,
          ),

          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              Icon(
                Icons.library_books_outlined,
                color: _selectedIndex== 1 ?  mBlueColor:  subTileColor,
                size: 25,
              )
            ),
            label: labelBooking,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.help_outline_rounded,
                color: _selectedIndex== 2 ?  mBlueColor:  subTileColor,
                size: 25,
              )
            ),
            label: labelHelp,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/icons/account_icon.png',
                color: _selectedIndex== 3 ?  mBlueColor:  subTileColor,
                width: 25,
                height: 25,
                fit: BoxFit.fill,
              ),
            ),
            label: labelAccount,
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        iconSize: 30,
        selectedItemColor: mBlueColor,
        unselectedItemColor: subTileColor,
        elevation: 0,
        selectedLabelStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}


