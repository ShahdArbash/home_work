import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({super.key});
  late String cityName;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          onChanged: (value) {
            cityName = value;
          },
          onSubmitted: (value) {
            BlocProvider.of<GetWeatherCubit>(
              context,
            ).getWeather(cityName: cityName);

            Navigator.pop(context);
          },
          decoration: InputDecoration(
            label: Text('Search'),
            hintText: 'Enter city name',
            contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              onPressed: () {
                BlocProvider.of<GetWeatherCubit>(
                  context,
                ).getWeather(cityName: cityName);
                Navigator.pop(context);
              },
              icon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
