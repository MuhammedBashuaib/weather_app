import 'package:flutter/material.dart';
import 'package:weather_app/const.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widthScreen * .03),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'there is no weather 😔 start',
              style: TextStyle(
                fontSize: fSize * 1.9,
              ),
            ),
            Text(
              'searching now 🔍',
              style: TextStyle(
                fontSize: fSize * 1.9,
              ),
            )
          ],
        ),
      ),
    );
  }
}
