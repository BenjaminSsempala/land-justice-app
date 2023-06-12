import 'package:flutter/material.dart';
import 'package:landjustice/widgets/customWidgets.dart';

class ReportDisputePage extends StatefulWidget {
  const ReportDisputePage({super.key});

  @override
  State<ReportDisputePage> createState() => _ReportDisputePageState();
}

class _ReportDisputePageState extends State<ReportDisputePage> {
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
                alignment: Alignment.centerLeft, child: Text("Report Dispute")),
            const SizedBox(height: 20),
            const Text(
              "Welcome to Report Dispute! Easily submit details about your dispute with clear and concise form fields. Upload photos and videos for additional evidence. Submit as urgent if necessary. Get a confirmation screen with next steps. We are here to support you in times of need.",
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
                  buildGridItem(Icons.file_upload, "", Colors.black54),
                  buildGridItem(Icons.playlist_add_check_circle_rounded, "",
                      Colors.black54),
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
