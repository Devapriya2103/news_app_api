import 'package:flutter/material.dart';
import 'package:news_app_api/view/bot_nav_bar_screen/bot_nav_bar_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
      ),
      body: Padding(
           padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              decoration: InputDecoration(
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(width: 10),
              ),
               suffixIcon: Icon(Icons.search,),
               hintText: "Search here",
             ),
           ),
          ),
    );
  }
}