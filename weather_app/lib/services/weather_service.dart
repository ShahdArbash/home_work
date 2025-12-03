import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  String apiKey = "45f80c1274354e0abe4174454252611";
  String baseUrl = "https://api.weatherapi.com/v1";
  final Dio dio;

  WeatherService({required this.dio});

  getForecast({required String city}) async {
    try {
      final response = await dio.get(
        "$baseUrl/forecast.json",
        queryParameters: {"key": apiKey, "q": city, "days": 7},
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      String errorMessage =
          e.response?.data['error']['message'] ??
          "opps! something went wrong try again later";

      throw Exception(errorMessage);
    } catch (e) {
      throw Exception("opps! something went wrong try again later");
    }
  }

  getListForgast({required String city}) async {
    try {
      final response = await dio.get(
        "$baseUrl/forecast.json",
        queryParameters: {"key": apiKey, "q": city, "days": 7},
      );
      List<WeatherModel> forecastList =
          (response.data['forecast']['forecastday'] as List)
              .map(
                (day) => WeatherModel.fromJson({
                  'location': response.data['location'],
                  'current': response.data['current'],
                  'forecast': {
                    'forecastday': [day],
                  },
                }),
              )
              .toList();
      return forecastList.first;
    } on DioException catch (e) {
      String errorMessage =
          e.response?.data['error']['message'] ??
          "opps! something went wrong try again later";

      throw Exception(errorMessage);
    } catch (e) {
      throw Exception("opps! something went wrong try again later");
    }
  }
}
