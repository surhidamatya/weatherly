import 'package:weatherlyapp/models/forecast.dart';
import 'package:weatherlyapp/models/location.dart';

abstract class WeatherApi {
  Future<Forecast> getWeather(Location location);
  Future<Location> getLocation(String city);
}
