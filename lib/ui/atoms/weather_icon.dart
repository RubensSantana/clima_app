import 'package:flutter/widgets.dart';

class WeatherIcon extends StatelessWidget {
  final String icon;
  const WeatherIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Text(icon, style: const TextStyle(fontSize: 60));
  }
}
