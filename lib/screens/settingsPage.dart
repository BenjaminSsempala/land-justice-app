import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text(
          "Land Justice",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 30, 40, 20),
        child: Column(
          children: [
            Image.asset(
              "assets/map.jpg",
              height: 250,
              // width: 200,
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
                    Icons.home,
                    "Legal Advice",
                    Colors.black,
                  ),
                  buildGridItem(
                      Icons.search_rounded, "Land Status", Colors.black),
                  buildGridItem(
                      Icons.settings_rounded, "System", Colors.grey[350]),
                  buildGridItem(Icons.notifications_active_rounded,
                      "Report Dispute", Colors.red[900]),
                ],
              ),
            ),
          ],
        ),
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
          Text(label,
              style: const TextStyle(fontSize: 16, color: Colors.black)),
        ],
      ),
    ));
  }
}
