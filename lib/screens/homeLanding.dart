import 'package:flutter/material.dart';
import 'package:landjustice/screens/legalAdvicePage.dart';
import 'package:landjustice/screens/reportDisputePage.dart';
import 'package:landjustice/screens/settingsPage.dart';
import 'package:landjustice/screens/viewStatusPage.dart';

class HomeLandingPage extends StatefulWidget {
  const HomeLandingPage({super.key});

  @override
  State<HomeLandingPage> createState() => _HomeLandingPageState();
}

class _HomeLandingPageState extends State<HomeLandingPage> {
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
                    const LegalAdvicePage(),
                  ),
                  buildGridItem(
                    Icons.search_rounded,
                    "Land Status",
                    Colors.black,
                    const ViewStatusPage(),
                  ),
                  buildGridItem(
                    Icons.settings_rounded,
                    "System",
                    Colors.grey[350],
                    const SettingsPage(),
                  ),
                  buildGridItem(
                    Icons.notifications_active_rounded,
                    "Report Dispute",
                    Colors.red[900],
                    const ReportDisputePage(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridItem(
      IconData iconData, String label, Color? color, Widget page) {
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
            const SizedBox(height: 10),
            Text(label,
                style: const TextStyle(fontSize: 16, color: Colors.black)),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
    );
  }
}
