import 'package:flutter/material.dart';
import '../molecules/icon_and_temperature.dart';

class WeatherCard extends StatelessWidget {
  final String city;
  final String icon;
  final double temp;
  final String description;

  const WeatherCard({
    super.key,
    required this.city,
    required this.icon,
    required this.temp,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha((0.5 * 255).toInt()),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            city,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          IconAndTemperature(icon: icon, temperature: temp),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
