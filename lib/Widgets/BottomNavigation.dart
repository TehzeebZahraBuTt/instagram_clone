
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // important
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
       BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: "Search"),
       BottomNavigationBarItem(icon: Icon(Icons.video_camera_back_outlined),label: "Reels"),
       BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: "Notifications"),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Profile"),
    ]);
  }
}
