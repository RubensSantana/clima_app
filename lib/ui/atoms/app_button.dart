import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool primary;
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.primary = true,
  });

  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(
      backgroundColor: primary ? Colors.lightBlue : Colors.white,
      foregroundColor: primary ? Colors.white : Colors.lightBlue,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      textStyle: const TextStyle(fontSize: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: primary
            ? BorderSide.none
            : const BorderSide(color: Colors.lightBlue),
      ),
    );
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: Text(label),
    );
  }
}
