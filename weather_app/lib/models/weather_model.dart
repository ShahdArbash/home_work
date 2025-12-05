class WeatherModel {
  final DateTime date;
  final double maxTemp;
  final double minTemp;
  final double avgTemp;
  final String cityName;
  final String weatherCondition;
  final String icon;

  WeatherModel({
    required this.weatherCondition,
    required this.cityName,
    required this.avgTemp,
    required this.date,
    required this.maxTemp,
    required this.minTemp,

    required this.icon,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      avgTemp: json['current']['temp_c'],
      date: DateTime.parse(json['location']['localtime']),
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      icon: json['current']['condition']['icon'],
      weatherCondition:
          json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
