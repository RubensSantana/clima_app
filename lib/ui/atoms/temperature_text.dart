import 'package:flutter/widgets.dart';

class TemperatureText extends StatelessWidget {
  final double temperature;
  const TemperatureText({super.key, required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${temperature.toStringAsFixed(1)}°C',
      style: const TextStyle(fontSize: 60, fontWeight: FontWeight.w200),
    );
  }
}
