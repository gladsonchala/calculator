import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  final String text;
  final Color btnColor;

  const SignButton({super.key, required this.text, required this.btnColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: btnColor,
        ),
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          width: 35,
          height: 35,
          margin: const EdgeInsets.all(5),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
