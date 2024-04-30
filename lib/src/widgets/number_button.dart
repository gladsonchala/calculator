import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final int num;

  const NumberButton({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          width: 35,
          height: 35,
          margin: const EdgeInsets.all(5),
          child: Text(
            num.toString(),
            style: const TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
