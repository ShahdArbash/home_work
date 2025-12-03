import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_stat.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherStatInitial());
  late WeatherModel weatherModel;
  getWeather({required String cityName}) async {
    try {
      emit(GetWeatherStatLoading());
      weatherModel = await WeatherService(
        dio: Dio(),
      ).getForecast(city: cityName);

      emit(GetWeatherStatSuccess(weatherModel: weatherModel));
    } on Exception catch (e) {
      emit(GetWeatherStatFailure(message: e.toString()));
    }
  }
}
