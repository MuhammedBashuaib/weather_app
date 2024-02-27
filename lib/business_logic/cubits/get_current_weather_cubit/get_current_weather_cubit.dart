import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_app/business_logic/cubits/get_current_weather_cubit/get_current_weather_states.dart';
import 'package:weather_app/data/model/weather_model.dart';
import 'package:weather_app/data/repositry/weather_repositry.dart';

class GetCurrentWeatherCubit extends Cubit<WeatherState> {
  GetCurrentWeatherCubit() : super(WeatherInitialState());

  WeatherModel? weatherModel;
  getCurrentWeather({required String cityName}) async {
    try {
      emit(WeatherLoadingState());
      weatherModel =
          await WeatherRepositry().getCurrentWatherData(cityName: cityName);
      // weatherModel = await WeatherService(dio: Dio()).getCurrentWeather(
      //   cityName: cityName,
      // );
      emit(
        WeatherLoadedState(
          weatherModel: weatherModel!,
        ),
      );
    } on Exception catch (e) {
      emit(
        WeatherFailureState(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
