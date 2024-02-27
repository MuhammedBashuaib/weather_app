import 'package:flutter/material.dart';

//Screen coordinates and the default size of the font
//////////////////////////////////////////////////////////////
double widthScreen = 0;
double heightScreen = 0;
double fSize = 0;

initializeHWFSize(BuildContext context) {
  widthScreen = MediaQuery.of(context).size.width;
  heightScreen = MediaQuery.of(context).size.height;
  fSize = widthScreen / 25;
}
//////////////////////////////////////////////////////////////

//Image assets path
//////////////////////////////////////////////////////////////
class MyImagePath {
  static const String cloudy = 'assets/images/cloudy.png';
  static const String clear = 'assets/images/clear.png';
  static const String rainy = 'assets/images/rainy.png';
  static const String snow = 'assets/images/snow.png';
  static const String thunderstorm = 'assets/images/thunderstorm.png';
}
//////////////////////////////////////////////////////////////

//constants of Api String
//////////////////////////////////////////////////////////////
class ConstantsOfApiString {
  static const String baseUrl = "http://api.weatherapi.com/v1/";
  static const String apiKey = "365883e6198a4d1db2370029242701";
}

MaterialColor getThemeColor({required String? condition}) {
  if (condition == null) {
    return Colors.blue;
  }

  switch (condition) {
    case "Sunny":
      return Colors.orange;
    case "Partly cloudy":
      return Colors.yellow;
    case "Cloudy":
      return Colors.grey;
    case "Overcast":
      return Colors.cyan;
    case "Mist":
      return Colors.lightBlue;
    case "Patchy rain possible":
      return Colors.lightGreen;
    case "Patchy snow possible":
      return Colors.lightBlue;
    case "Patchy sleet possible":
      return Colors.cyan;
    case "Patchy freezing drizzle possible":
      return Colors.deepPurple;
    case "Thundery outbreaks possible":
      return Colors.amber;
    case "Blowing snow":
      return Colors.blue;
    case "Blizzard":
      return Colors.lightBlue;
    case "Fog":
      return Colors.grey;
    case "Freezing fog":
      return Colors.grey;
    case "Patchy light drizzle":
      return Colors.lightBlue;
    case "Light drizzle":
      return Colors.lightBlue;
    case "Freezing drizzle":
      return Colors.cyan;
    case "Heavy freezing drizzle":
      return Colors.cyan;
    case "Patchy light rain":
      return Colors.lightGreen;
    case "Light rain":
      return Colors.lightGreen;
    case "Moderate rain at times":
      return Colors.green;
    case "Moderate rain":
      return Colors.green;
    case "Heavy rain at times":
    case "Heavy rain":
      return Colors.green;
    case "Light freezing rain":
      return Colors.lightBlue;
    case "Moderate or heavy freezing rain":
      return Colors.blue;
    case "Light sleet":
      return Colors.cyan;
    case "Moderate or heavy sleet":
      return Colors.cyan;
    case "Patchy light snow":
    case "Light snow":
    case "Patchy moderate snow":
    case "Moderate snow":
    case "Patchy heavy snow":
    case "Heavy snow":
    case "Light snow showers":
    case "Moderate or heavy snow showers":
      return Colors.lightBlue;
    case "Ice pellets":
      return Colors.cyan;
    case "Light rain shower":
      return Colors.lightGreen;
    case "Moderate or heavy rain shower":
      return Colors.green;
    case "Torrential rain shower":
      return Colors.green;
    case "Light sleet showers":
      return Colors.cyan;
    case "Moderate or heavy sleet showers":
      return Colors.cyan;
    case "Light showers of ice pellets":
      return Colors.blue;
    case "Moderate or heavy showers of ice pellets":
      return Colors.blue;
    case "Patchy light rain with thunder":
      return Colors.amber;
    case "Moderate or heavy rain with thunder":
      return Colors.deepOrange;
    case "Patchy light snow with thunder":
      return Colors.cyan;
    case "Moderate or heavy snow with thunder":
      return Colors.cyan;
    default:
      return Colors.grey;
  }
}
