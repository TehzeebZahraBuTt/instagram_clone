import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/HomePage.dart';
import 'package:instagram_clone/Screens/SearchPage.dart';
import 'package:instagram_clone/Screens/ReelsPage.dart';
import 'package:instagram_clone/Screens/NotificationPage.dart';
import 'package:instagram_clone/Screens/ProfilePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/" : (context) =>  Homepage(),
        "/search":(context)=> SearchPage(),
        "/reels":(context)=> ReelsPage(),
        "/notificationPage":(context)=>NotificationPage(),
        "/profilePage":(context)=>ProfilePage(),

      },
    );
  }
}