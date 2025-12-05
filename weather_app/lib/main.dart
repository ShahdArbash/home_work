import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';
import 'package:weather_app/cubit/get_weather_stat.dart';
import 'package:weather_app/get_color_them.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, GetWeatherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                colorScheme: ColorScheme.fromSwatch(
                  primarySwatch: getColorThem(
                    BlocProvider.of<GetWeatherCubit>(
                      context,
                    ).weatherModel?.weatherCondition,
                  ),
                ),
                appBarTheme: AppBarTheme(
                  backgroundColor: getColorThem(
                    BlocProvider.of<GetWeatherCubit>(
                      context,
                    ).weatherModel?.weatherCondition,
                  ),
                ),
              ),

              debugShowCheckedModeBanner: false,

              home: HomeView(),
            );
          },
        ),
      ),
    );
  }
}
