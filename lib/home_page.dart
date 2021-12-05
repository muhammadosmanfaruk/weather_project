import 'package:flutter/material.dart';

import 'current_weather.dart';
import 'forcast_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Weather App",style: TextStyle(fontWeight: FontWeight.bold ),),
          bottom: TabBar(
              tabs: [
              Text("Current Weather"),
              Text("Forcast Weather"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CurrentWeather(),
            ForcastWeather(),
          ],
        ),
      ),
    );
  }
}
