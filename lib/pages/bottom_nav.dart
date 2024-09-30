import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';
import 'order.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart'; // Assuming you are using this package

class BottomNav extends StatefulWidget {
  const BottomNav({super.key, required user});

  @override
  State<BottomNav> createState() => _BottomNavState();
 }

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;

  late Home homePage;
  late Order order;
  late Profile profile;

  int currentTabIndex = 0;

  @override
  void initState() {
    homePage = Home();
    order = Order();
    profile = Profile();
    pages = [homePage, order, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Color(0xfff2f2f2),
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outlined,
            color: Colors.white,
          ),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
