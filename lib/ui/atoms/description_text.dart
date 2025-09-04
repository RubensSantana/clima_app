import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  final String description;
  const DescriptionText({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 20, color: Colors.black54),
    );
  }
}
