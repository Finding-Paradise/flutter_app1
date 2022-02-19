// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/navpages/fav_page.dart';
import 'package:flutter_app1/pages/navpages/home_page.dart';
import 'package:flutter_app1/pages/navpages/my_page.dart';
import 'package:flutter_app1/pages/navpages/notification_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const NotificationPage(),
    const FavoritePage(),
    const MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: pages[currentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.orange[900],
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Catalog', icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(
              label: 'Favorite', icon: Icon(Icons.star)),
          BottomNavigationBarItem(
              label: 'MyPage', icon: Icon(Icons.person_sharp)),
        ],
      ),
    );
  }
}
