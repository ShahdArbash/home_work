class ForecastDay {
  final String date;
  final double maxTemp;
  final double minTemp;
  final String conditionText;
  final String icon;

  ForecastDay({
    required this.date,
    required this.maxTemp,
    required this.minTemp,
    required this.conditionText,
    required this.icon,
  });
}
