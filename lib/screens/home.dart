import 'package:flutter/material.dart';
import 'package:landjustice/screens/homeLading.dart';
import 'package:landjustice/widgets/customWidgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeLandingPage(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   leading: Icon(
      //     Icons.menu,
      //   ),
      //   title: const Text('Land Justice'),
      // ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: BottomNavIcon(
              icon: Icons.home,
              label: '',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: BottomNavIcon(
              icon: Icons.window,
              label: '',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: BottomNavIcon(
              icon: Icons.person,
              label: '',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: BottomNavIcon(
              icon: Icons.menu,
              label: '',
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
