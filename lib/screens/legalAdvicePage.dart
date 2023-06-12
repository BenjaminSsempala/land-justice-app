import 'package:flutter/material.dart';
import 'package:landjustice/widgets/customWidgets.dart';

class LegalAdvicePage extends StatefulWidget {
  const LegalAdvicePage({super.key});

  @override
  State<LegalAdvicePage> createState() => _LegalAdvicePageState();
}

class _LegalAdvicePageState extends State<LegalAdvicePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Back",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 40, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  "assets/map.jpg",
                  height: 150,
                  width: 400,
                )),
            const SizedBox(height: 20),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("Seek Legal Advice")),
            const SizedBox(height: 20),
            const Text(
              "Welcome to Seek Legal Advice! Access legal information and connect with professionals. Browse by topic or use the chatbot for quick answers. Connect with a legal professional for personalized advice. Rate the advice you receive with our feedback button. Get the support you need with ease.",
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  buildGridItem(Icons.chat, "Chat Bot", Colors.grey[350]),
                  buildGridItem(Icons.access_time_filled_rounded,
                      "Legal Professional", Colors.red[900]),
                ],
              ),
            ),
          ],
        ),
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

  Widget buildGridItem(IconData iconData, String label, Color? color) {
    return GestureDetector(
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 100,
              color: color,
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
