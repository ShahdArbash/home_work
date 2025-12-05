import 'package:flutter/material.dart';

MaterialColor getColorThem(String? condtion) {
  if (condtion == null) {
    return Colors.blue;
  }
  condtion = condtion.toLowerCase();
  // مشمس / صافي
  if (condtion.contains("sunny") || condtion.contains("clear")) {
    return Colors.amber;
  }

  // غائم جزئي
  if (condtion.contains("partly cloudy")) {
    return Colors.lightBlue;
  }

  // غائم / ضباب
  if (condtion.contains("cloudy") ||
      condtion.contains("overcast") ||
      condtion.contains("mist") ||
      condtion.contains("fog")) {
    return Colors.blueGrey;
  }

  // رذاذ / أمطار خفيفة
  if (condtion.contains("drizzle") ||
      condtion.contains("patchy light rain") ||
      condtion.contains("light rain") ||
      condtion.contains("rain shower")) {
    return Colors.blue;
  }

  // أمطار متوسطة
  if (condtion.contains("moderate rain") ||
      condtion.contains("rain at times") ||
      condtion.contains("moderate or heavy rain shower")) {
    return Colors.indigo;
  }

  // أمطار غزيرة
  if (condtion.contains("heavy rain") || condtion.contains("torrential rain")) {
    return Colors.indigo;
  }

  // تجمد / مطر متجمد
  if (condtion.contains("freezing") ||
      condtion.contains("sleet") ||
      condtion.contains("ice pellets")) {
    return Colors.cyan;
  }

  // ثلوج
  if (condtion.contains("snow") ||
      condtion.contains("blizzard") ||
      condtion.contains("patchy snow")) {
    return Colors.lightBlue;
  }

  // عواصف رعدية
  if (condtion.contains("thunder")) {
    return Colors.deepPurple;
  }

  // لون افتراضي
  return Colors.blue;
}
