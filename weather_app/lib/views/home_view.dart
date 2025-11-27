import 'package:flutter/material.dart';
import 'package:weather_app/app_bar_method.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_city.dart';

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
      body: NoWeatherCity(),
    );
  }
}
