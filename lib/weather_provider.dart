
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


class WeatherProvider extends ChangeNotifier{



  Future<void>getWatherInfo()async{
    final response=await http.get(Uri.parse("api.openweathermap.org/data/2.5/find?lat=55.5&lon=37.5&cnt=10&appid=94277b3778347ce3d0c6ce3590ce4bae"));


  }
}