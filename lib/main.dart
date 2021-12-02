import 'package:flutter/material.dart';
import 'package:weather_project/home_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'weather app',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HomePage(

      ),
    );
  }
}
