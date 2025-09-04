import 'package:flutter/widgets.dart';

class IconAndTemperature extends StatelessWidget {
  final String icon;
  final double temperature;
  const IconAndTemperature({
    super.key,
    required this.icon,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(icon, style: const TextStyle(fontSize: 60)),
        const SizedBox(width: 10),
        Text(
          '${temperature}°C',
          style: const TextStyle(fontSize: 60, fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
