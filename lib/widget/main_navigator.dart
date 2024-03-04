import 'package:flutter/material.dart';
import 'package:hmtk_app/presentation/user/account.dart';
import 'package:hmtk_app/utils/color_pallete.dart';

import '../presentation/user/home.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 0;
  List<Widget> _screen = [
    Home(),
    Home(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screen[_selectedIndex],
        bottomNavigationBar: Container(
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              // borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              child: BottomNavigationBar(
                currentIndex: _selectedIndex,
                backgroundColor: ColorPallete.greenprim,
                selectedItemColor: ColorPallete.greensec,
                unselectedItemColor: Colors.white,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.compass_calibration), label: 'Timeline'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Account'),
                ],
                onTap: (i) {
                  setState(() {
                    _selectedIndex = i;
                  });
                },
              ),
            )));
  }
}
