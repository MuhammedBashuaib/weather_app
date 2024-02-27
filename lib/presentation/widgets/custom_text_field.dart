import 'package:flutter/material.dart';
import 'package:weather_app/const.dart';

class CustomTextField extends StatelessWidget {
  final Function(String value)? onSubmitted;
  const CustomTextField({
    super.key,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: widthScreen * .02,
          vertical: heightScreen * .03,
        ),
        suffixIcon: const Icon(Icons.search),
        hintText: "Enter city name",
        labelText: "Search",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widthScreen * .01),
          borderSide: const BorderSide(
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
