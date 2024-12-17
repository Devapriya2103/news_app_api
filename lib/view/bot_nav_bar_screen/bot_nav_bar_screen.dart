import 'package:flutter/material.dart';
import 'package:news_app_api/view/account_screen/account_screen.dart';
import 'package:news_app_api/view/home_screen/home_screen.dart';
import 'package:news_app_api/view/saved_screen/saved_screen.dart';
import 'package:news_app_api/view/utils/colorconstant.dart';

class BotNavBarScreen extends StatefulWidget {
  const BotNavBarScreen({super.key});

  @override
  State<BotNavBarScreen> createState() => _BotNavBarScreenState();
}

class _BotNavBarScreenState extends State<BotNavBarScreen> {
  int selectedindex = 0;
  List <Widget> container = [
    HomeScreen(),
    SavedScreen(),
    AccountScreen(),
  ];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: container[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: (value) {
          selectedindex = value;
          setState(() {});
        },
        
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colorconstant.PRIMARY,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border),label: "Saved"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Account"),
        ],
      ),
    );
  }
}