import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  final String text;
  final Color btnColor;
  final VoidCallback onPressed;

  const SignButton({Key? key, required this.text, required this.btnColor, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: btnColor,
        ),
        onPressed: onPressed,
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
