import 'package:flutter/material.dart';
import 'package:news_app_api/view/bot_nav_bar_screen/bot_nav_bar_screen.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context, 
              MaterialPageRoute(builder: (context) => BotNavBarScreen(),)
              );
          },
          child: Icon(Icons.arrow_back,size: 30,)
          ),
        title: Text("Saved",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),),
      ),
      body: Center(
        child: Text("No Saved Items",
        style: TextStyle(
          fontSize: 24,
        ),
        ),
      ),
    );
  }
}