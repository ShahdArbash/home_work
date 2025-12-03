import 'package:weather_app/models/weather_model.dart';

class GetWeatherState {}

class GetWeatherStatLoading extends GetWeatherState {}

class GetWeatherStatSuccess extends GetWeatherState {
  final WeatherModel weatherModel;
  GetWeatherStatSuccess({required this.weatherModel});
}

class GetWeatherStatFailure extends GetWeatherState {
  final String message;
  GetWeatherStatFailure({required this.message});
}

class GetWeatherStatInitial extends GetWeatherState {}
