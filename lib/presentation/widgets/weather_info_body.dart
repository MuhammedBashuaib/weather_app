import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:weather_app/const.dart';
import 'package:weather_app/data/model/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  final WeatherModel weatherModel;

  const WeatherInfoBody({
    Key? key,
    required this.weatherModel,
  }) : super(key: key);

  DateTime getDateTime(String value) {
    return DateTime.parse(value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          getThemeColor(condition: weatherModel.weatherCondition),
          getThemeColor(condition: weatherModel.weatherCondition)[300]!,
          getThemeColor(condition: weatherModel.weatherCondition)[50]!,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      padding: EdgeInsets.symmetric(horizontal: widthScreen * .03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fSize * 2,
            ),
          ),
          Text(
            'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
            style: TextStyle(
              fontSize: fSize * 1.6,
            ),
          ),
          SizedBox(
            height: heightScreen * .04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CachedNetworkImage(
                imageUrl: weatherModel.image.contains("https:")
                    ? weatherModel.image
                    : "https:${weatherModel.image}",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Text(
                weatherModel.temp.round().toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fSize * 2,
                ),
              ),
              Column(
                children: [
                  Text(
                    'Maxtemp: ${weatherModel.maxTemp.round()}',
                    style: TextStyle(
                      fontSize: fSize,
                    ),
                  ),
                  Text(
                    'Mintemp: ${weatherModel.minTemp.round()}',
                    style: TextStyle(
                      fontSize: fSize,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: heightScreen * .04,
          ),
          Text(
            weatherModel.weatherCondition,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fSize * 2,
            ),
          ),
        ],
      ),
    );
  }
}
