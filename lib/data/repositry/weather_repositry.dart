import 'package:dio/dio.dart';
import 'package:weather_app/data/model/weather_model.dart';
import 'package:weather_app/data/services/weather_service.dart';

class WeatherRepositry {
  Future<WeatherModel> getCurrentWatherData({required String cityName}) async {
    WeatherModel weatherModel =
        await WeatherService(dio: Dio()).getCurrentWeather(
      cityName: cityName,
    );
    return weatherModel;
  }
}
