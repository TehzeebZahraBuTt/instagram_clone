import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/HomePage.dart';

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

      },
    );
  }
}