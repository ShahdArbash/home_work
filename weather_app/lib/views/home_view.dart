import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/app_bar_method.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';
import 'package:weather_app/cubit/get_weather_stat.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_city.dart';
import 'package:weather_app/widgets/weather_info.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMethod(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ),
              );
            },
            icon: Icon(Icons.search),
          ),
        ],
        title: 'Weather App',
      ),
      body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) {
          if (state is GetWeatherStatInitial) {
            return NoWeatherCity();
          } else if (state is GetWeatherStatLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is GetWeatherStatSuccess) {
            return WeatherInfo(weatherModel: state.weatherModel);
          } else if (state is GetWeatherStatFailure) {
            return Center(
              child: Text(
                'Error: ${state.message}',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          } else {
            return Center(child: Text('Unknown state'));
          }
        },
      ),
    );
  }
}
