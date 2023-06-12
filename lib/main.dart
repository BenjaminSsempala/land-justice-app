import 'package:flutter/material.dart';
import 'package:landjustice/screens/landingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Land Justice',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontFamily: 'poppins',
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
          ),
          bodySmall: TextStyle(
            color: Colors.white,
            fontFamily: 'poppins',
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        primarySwatch: Colors.grey,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}
