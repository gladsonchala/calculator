import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String text;
  const Display({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          style: BorderStyle.solid,
          color: Colors.deepOrange,
        ),
      ),
      padding: const EdgeInsets.all(8),
      height: 50,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
