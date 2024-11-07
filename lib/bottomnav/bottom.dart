import 'package:flutter/material.dart';

import 'package:smart_money/Pages/Home.dart';

class TombolNav extends StatefulWidget {
  const TombolNav({super.key});

  @override
  State<TombolNav> createState() => _TombolNavState();
}

class _TombolNavState extends State<TombolNav> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> listpage = <Widget>[
      const HomeScreen(),
      Center(child: const Text('Profile')),
      
      
    ];

    final List<BottomNavigationBarItem> bottomNavBarItems =
        <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Icon(Icons.home),
        ),
        label: '',
      ),
     
      const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Icon(Icons.person),
        ),
        label: '',
      ),
    ];

    final BottomNavigationBar bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0XFF13151B),
      items: bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      unselectedItemColor: Color(0xff535151),
      selectedItemColor: Colors.white,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      body: Center(
        child: listpage[_selectedTabIndex],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
        ),
        child: bottomNavBar,
      ),
    );
  }
}
