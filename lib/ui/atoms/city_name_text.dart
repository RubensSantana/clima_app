import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CityNameText extends StatelessWidget {
  final String city;
  const CityNameText({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Text(
      city,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }
}
