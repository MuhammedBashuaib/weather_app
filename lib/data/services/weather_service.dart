import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/const.dart';
import 'package:weather_app/data/model/weather_model.dart';

class WeatherService {
  final Dio dio;

  WeatherService({required this.dio});

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          "${ConstantsOfApiString.baseUrl}forecast.json?key=${ConstantsOfApiString.apiKey}&q=$cityName&days=1");
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data["error"]["messate"] ??
          "Oops there was an error, try agin !";
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception("Oops there was an error, try agin !");
    }
  }
}
