import 'package:flutter/material.dart';
import 'package:routes/pages/about_us_page.dart';
import 'package:routes/pages/gallery_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIdx,
        children: const [HomePageContent(), GalleryPage(), AboutUsPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIdx,
          onTap: (index) {
            setState(() {
              _currentIdx = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.square_rounded),
                label: "Gallery",
                backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "About Us",
                backgroundColor: Colors.blueAccent),
          ]),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Home Page",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/detail');
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
