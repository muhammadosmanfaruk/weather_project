
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:weather_project/model/weather_response.dart';

class WeatherProvider with ChangeNotifier{

  late WeatherResponse _weatherResponse;

  WeatherResponse get getWeatherData=>_weatherResponse;

  Future<void>getcurrentWeatherInfo()async{
    String url="https://api.openweathermap.org/data/2.5/weather?q=London&appid=47d172b357d1ca2fdf261eb073cd6637";
        final response=await http.get(Uri.parse(url));
        final map=jsonDecode(response.body);
        print(response.body);

        _weatherResponse= WeatherResponse.fromMap(map);
        notifyListeners();

  }
}