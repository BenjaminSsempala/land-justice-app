import 'package:flutter/material.dart';

class HomeLandingPage extends StatefulWidget {
  const HomeLandingPage({super.key});

  @override
  State<HomeLandingPage> createState() => _HomeLandingPageState();
}

class _HomeLandingPageState extends State<HomeLandingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Land Justice"),
        ),
        body: Column(
          children: [
            Container(),
            Expanded(
              flex: 1,
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  buildGridItem(Icons.home, "Legal Advice"),
                  buildGridItem(Icons.settings, "Land Status"),
                  buildGridItem(Icons.notifications, "System"),
                  buildGridItem(Icons.person, "Report Dispute"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridItem(IconData iconData, String label) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconData, size: 25),
          SizedBox(height: 10),
          Text(label, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
