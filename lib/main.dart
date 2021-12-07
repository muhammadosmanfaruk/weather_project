import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_project/home_page.dart';
import 'package:weather_project/model/weather_response.dart';
import 'package:weather_project/ui_design.dart';
import 'package:weather_project/weather_provider.dart';

void main(){
  runApp(
    MultiProvider(providers:
    [
    ChangeNotifierProvider(create: (context)=>WeatherProvider()),
  ],
    child: MyApp(),
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'weather app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: UIDesign(),
    );
  }
}
