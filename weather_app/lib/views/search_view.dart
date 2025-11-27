import 'package:flutter/material.dart';
import 'package:weather_app/app_bar_method.dart';
import 'package:weather_app/widgets/search_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMethod(actions: [], title: 'Search a City'),
      body: SearchTextField(),
    );
  }
}
