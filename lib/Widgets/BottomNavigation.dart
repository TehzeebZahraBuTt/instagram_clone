
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
       currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed, // important
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index){
         setState(() {
           _currentIndex = index;
         });
         switch (index) {
           case 0:
             Navigator.pushNamed(context, '/');
             break;
           case 1:
             Navigator.pushNamed(context, '/search');
             break;
           case 2:
             Navigator.pushNamed(context, '/reels');
             break;
           case 3:
             Navigator.pushNamed(context, '/notifications');
             break;
           case 4:
             Navigator.pushNamed(context, '/profile');
             break;
         }
        },

        items: [
       BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: "Search"),
       BottomNavigationBarItem(icon: Icon(Icons.video_camera_back_outlined),label: "Reels"),
       BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: "Notifications"),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Profile"),
    ]);
  }
}
