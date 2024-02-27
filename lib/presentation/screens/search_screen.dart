import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/business_logic/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';
import 'package:weather_app/const.dart';

import 'package:weather_app/presentation/widgets/custom_text_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search City",
          style: TextStyle(
            fontSize: fSize * 1.5,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomTextField(
          onSubmitted: (value) {
            BlocProvider.of<GetCurrentWeatherCubit>(context)
                .getCurrentWeather(cityName: value);
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
