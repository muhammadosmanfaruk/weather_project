import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_project/model/weather_response.dart';
import 'package:weather_project/weather_provider.dart';

class CurrentWeather extends StatefulWidget {
  const CurrentWeather({Key? key}) : super(key: key);

  @override
  _CurrentWeatherState createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {
  bool isLoading =true;
  @override
  void didChangeDependencies (){
    Provider.of<WeatherProvider>(context)
        .getcurrentWeatherInfo()
        .then((weatherData) {
      setState(() {
        isLoading = false;
      });
      super.didChangeDependencies();
    });
  }

  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
        builder: (context, value, child) =>isLoading? Center(child:CircularProgressIndicator()) :
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
            child: Text("${value.getWeatherData.main.temp} ${value.getWeatherData.name}"),
        ),
    );


    //   Center(
    //   child: Text("Current Weather"),
    // );
  }
}
