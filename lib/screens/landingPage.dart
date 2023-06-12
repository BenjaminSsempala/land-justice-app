import 'package:flutter/material.dart';
import 'package:landjustice/screens/signup_screen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  
  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
  
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const FlutterLogo(size: 100), // Replace with  logo widget
          const SizedBox(height: 10),
          const Text(
              "Land Justice",
            style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          const SizedBox(height: 90),
          const Text(
              "Welcome to Land Justice Uganda",
              style: TextStyle(
                fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          const SizedBox(height: 10),
          Padding(
              padding: EdgeInsets.fromLTRB(
                50,
                padding.top,
                50,
                padding.bottom,
              ),
              child: const Text(
                "Our App is designed to provide easy Access to information on Land Rights, ownership, and disputes as well as facilitate communication between landowners and government officials. We believe everyone has a right to their land, and our app is here to help you navigate the often complex worl of land ownership in Uganda.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, color: Colors.black),
              )
            ),
          const SizedBox(height: 70),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
            child: const Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
            ),
          ],
        
      ),
    );
  }
}
