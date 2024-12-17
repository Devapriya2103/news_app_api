import 'package:flutter/material.dart';
import 'package:news_app_api/view/bot_nav_bar_screen/bot_nav_bar_screen.dart';
import 'package:news_app_api/view/utils/colorconstant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Create Your Account",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 35),
            TextField(
              decoration: InputDecoration(
                labelText: 'Your Email Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 25),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Your Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Spacer(),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colorconstant.PRIMARY
                    ),
                ),
              ],
            ),
            SizedBox(height: 25),
            InkWell(
             onTap: () {
               Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (context) => BotNavBarScreen(),)
                );
             },
            child: Container(
            alignment: Alignment.center,
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
            color:Colorconstant.PRIMARY,
            borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Sign Up",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              ),
        ),
      ),
    ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
                ),
                Text(
                  " Sign Up",
                  style: TextStyle(
                fontSize: 12,
                color: Colorconstant.PRIMARY,
               ),
              ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}