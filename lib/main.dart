import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/business_logic/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';
import 'package:weather_app/business_logic/cubits/get_current_weather_cubit/get_current_weather_states.dart';
import 'package:weather_app/const.dart';
import 'package:weather_app/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeHWFSize(context);
    return BlocProvider(
      create: (context) => GetCurrentWeatherCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<GetCurrentWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                //brightness: Brightness.dark,
                primarySwatch: getThemeColor(
                    condition: BlocProvider.of<GetCurrentWeatherCubit>(context)
                        .weatherModel
                        ?.weatherCondition),
              ),
              home: const HomeScreen(),
            );
          },
        );
      }),
    );
  }
}
