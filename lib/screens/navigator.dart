import 'package:flutter/material.dart';
import 'package:food_app/navigator_screens.dart';
import 'package:food_app/screens/home/Home.dart';
import 'package:food_app/screens/home/card.dart';
import 'package:food_app/screens/home/chat.dart';
import 'package:food_app/screens/home/profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class navigator extends StatefulWidget {
  const navigator({super.key});

  @override
  State<navigator> createState() => _navigatorState();
}

class _navigatorState extends State<navigator> {
  List<Widget> screens = [
   Home(),
   Profile(),
  card(),
   Chat()
    ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: GNav(
            onTabChange: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            haptic: true, // haptic feedback
            tabBorderRadius: 10,
            tabActiveBorder:
                Border.fromBorderSide(BorderSide.none), // tab button border
            tabBorder:
                Border.fromBorderSide(BorderSide.none), // tab button border
            gap: 8, // the tab button gap between icon and text
            color: Colors.greenAccent, // unselected icon color
            activeColor: Colors.greenAccent, // selected icon and text color
            iconSize: 30, // tab button icon size
            tabBackgroundColor: Colors.greenAccent.withOpacity(0.5),
            textStyle:
                TextStyle(color: Colors.black), // selected tab background color
            padding: EdgeInsets.all(10), // navigation bar padding
            selectedIndex: currentIndex,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.person,
                text: 'profile',
              ),
              GButton(
                icon: Icons.card_giftcard,
                text: 'card',
              ),
              GButton(
                icon: Icons.message,
                text: 'Chat',
              )
            ]),
      ),
      body: IndexedStack(
        index:currentIndex,
        children: screens,
      ),
    );
  }
}
