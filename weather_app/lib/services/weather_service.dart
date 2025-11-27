import 'package:dio/dio.dart';
import 'package:weather_app/models/forecast_day.dart';

class WeatherService {
  final Dio dio = Dio();
  List<ForecastDay> listDataWeather = [];
  Future<List<ForecastDay>> getForecast(String city) async {
    const String apiKey = "45f80c1274354e0abe4174454252611";

    final response = await dio.get(
      "http://api.weatherapi.com/v1/forecast.json",
      queryParameters: {"key": apiKey, "q": city, "days": 7},
    );

    final List<dynamic> DataWeather = response.data["forecast"]["forecastday"];
    for (var element in DataWeather) {
      listDataWeather.add(
        ForecastDay(
          date: element["date"],
          maxTemp: element["day"]["maxtemp_c"],
          minTemp: element["day"]["mintemp_c"],
          conditionText: element["day"]["condition"]["text"],
          icon: element["day"]["condition"]["icon"],
        ),
      );
    }
    return listDataWeather;
  }
}
