import 'package:flutter/material.dart';
import 'package:landjustice/widgets/customWidgets.dart';

class ViewStatusPage extends StatefulWidget {
  const ViewStatusPage({super.key});

  @override
  State<ViewStatusPage> createState() => _ViewStatusPageState();
}

class _ViewStatusPageState extends State<ViewStatusPage> {
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
                alignment: Alignment.centerLeft, child: Text("View Status")),
            const SizedBox(height: 20),
            const Text(
              "Welcome to View Status! Includes a list of previously submitted reports with their current status, the option to view report details and updates, and the ability to request follow-ups or escalations. Stay informed and take action on unresolved disputes with our app.",
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
                  buildGridItem(
                      Icons.stacked_bar_chart_rounded, "", Colors.black54),
                  buildGridItem(Icons.folder_copy_rounded, "", Colors.black),
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
