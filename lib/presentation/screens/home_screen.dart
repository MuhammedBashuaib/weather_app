import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/business_logic/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';
import 'package:weather_app/business_logic/cubits/get_current_weather_cubit/get_current_weather_states.dart';
import 'package:weather_app/const.dart';
import 'package:weather_app/presentation/screens/search_screen.dart';
import 'package:weather_app/presentation/widgets/no_weather_body.dart';
import 'package:weather_app/presentation/widgets/weather_info_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
            },
            icon: Icon(
              size: heightScreen * .035,
              Icons.search,
            ),
          )
        ],
      ),
      body: BlocBuilder<GetCurrentWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return const NoWeatherBody();
          } else if (state is WeatherLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WeatherLoadedState) {
            return WeatherInfoBody(
              weatherModel: state.weatherModel,
            );
          } else {
            return const Text("state.errorMessage");
          }
        },
      ),
    );
  }
}
