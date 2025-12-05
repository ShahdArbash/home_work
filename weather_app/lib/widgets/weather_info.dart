import 'package:flutter/material.dart';
import 'package:weather_app/get_color_them.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            getColorThem(weatherModel.weatherCondition),
            getColorThem(weatherModel.weatherCondition)[200]!,
            getColorThem(weatherModel.weatherCondition)[50]!,
          ],
        ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'updated at : ${weatherModel.date.hour}:${weatherModel.date.minute} ',
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.cloud, size: 72, color: Colors.white),
                const SizedBox(width: 24),

                Text(
                  weatherModel.avgTemp.toInt().toString(),
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(width: 24),
                // max/min column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'maxTemp : ${weatherModel.maxTemp.toInt()}',

                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'minTemp : ${weatherModel.minTemp.toInt()}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Text(
            weatherModel.weatherCondition,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
