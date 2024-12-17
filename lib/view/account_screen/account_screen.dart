import 'package:flutter/material.dart';
import 'package:news_app_api/view/bot_nav_bar_screen/bot_nav_bar_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
        title: Text("Account",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: CircleAvatar(radius: 42,
              ),
              ),
              SizedBox(height: 12),
              Center(
                child: Text("User's Name",
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Account Informations",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,),
                  ),
                    SizedBox(height: 18),
                    Text("Report an issue",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,),
                  ),
                    SizedBox(height: 18),
                    Text("Language Preference",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,),
                    ),
                    SizedBox(height: 18),
                    Text("Downloads",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,),
                  ),
                    SizedBox(height: 18),
                    Text("Notification Settings",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,),
                  ),
                  SizedBox(height: 18),
                    Text("Settings",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,),
                  ),
                    SizedBox(height: 18),
                    Text("Privacy",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,),
                  ),
                  SizedBox(height: 18),
                    Text("Sign Out",
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,),
                  ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}