import 'package:flutter/material.dart';
import 'package:univfinder/screens/components/home.dart';
import 'package:univfinder/screens/components/news.dart';
import 'package:univfinder/screens/components/search.dart';
import 'package:univfinder/utils/colors.dart';

import 'components/account.dart';

class TabsMainBody extends StatefulWidget {
  const TabsMainBody({Key? key}) : super(key: key);

  @override
  State<TabsMainBody> createState() => _TabsMainBodyState();
}

class _TabsMainBodyState extends State<TabsMainBody> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const SearchPage(),
    const NewsPage(),
    const AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/news.png',
              height: 25,
              width: 25,
            ),
            activeIcon: Image.asset(
              'assets/news.png',
              height: 25,
              width: 25,
              color: redAccent,
            ),
            label: 'News',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: redAccent,
        unselectedItemColor: blackColor,
        selectedLabelStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
