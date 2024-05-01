import 'package:calculator/src/calculator.dart';
import 'package:calculator/src/widgets/display.dart';
import 'package:calculator/src/widgets/number_button.dart';
import 'package:calculator/src/widgets/sign_button.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayText = '0';
  Calculator calculator = Calculator();

  void updateDisplay(String value) {
    setState(() {
      displayText = value;
    });
  }

  void handleNumberPress(int number) {
    if (displayText == '0') {
      updateDisplay(number.toString());
    } else {
      updateDisplay(displayText + number.toString());
    }
  }

  void handleOperationPress(String operation) {
    if (operation == '=') {
      calculator.num2 = double.parse(displayText);
      double result = calculator.calculate();
      updateDisplay(result.toString());
      calculator.reset();
    } else if (operation == 'C') {
      updateDisplay('0');
      calculator.reset();
    } else if (operation == '+/-') {
    updateDisplay(displayText.startsWith('-') ? displayText.substring(1) : '-$displayText');
    } else {
      calculator.num1 = double.parse(displayText);
      calculator.sign = operation;
      updateDisplay('0');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Basic Calculator"),
      ),
      body: Center(
        child: Column(
          children: [
            Display(
              text: displayText,
            ),
            Row(
              children: [
                NumberButton(num: 7, onPressed: () => handleNumberPress(7)),
                NumberButton(num: 8, onPressed: () => handleNumberPress(8)),
                NumberButton(num: 9, onPressed: () => handleNumberPress(9)),
              ],
            ),
            Row(
              children: [
                NumberButton(num: 4, onPressed: () => handleNumberPress(4)),
                NumberButton(num: 5, onPressed: () => handleNumberPress(5)),
                NumberButton(num: 6, onPressed: () => handleNumberPress(6)),
              ],
            ),
            Row(
              children: [
                NumberButton(num: 1, onPressed: () => handleNumberPress(1)),
                NumberButton(num: 2, onPressed: () => handleNumberPress(2)),
                NumberButton(num: 3, onPressed: () => handleNumberPress(3)),
              ],
            ),
            Row(
              children: [
                SignButton(
                  text: "+/-",
                  btnColor: const Color.fromARGB(255, 205, 179, 255),
                  onPressed: () => handleOperationPress("+/-"),
                ),
                NumberButton(num: 0, onPressed: () => handleNumberPress(0)),
                SignButton(
                  text: "%",
                  btnColor: const Color.fromARGB(255, 205, 179, 255),
                  onPressed: () => handleOperationPress("%"),
                ),
              ],
            ),
            Row(
              children: [
                SignButton(
                  text: "+",
                  btnColor: const Color.fromARGB(255, 205, 179, 255),
                  onPressed: () => handleOperationPress("+"),
                ),
                SignButton(
                  text: "-",
                  btnColor: const Color.fromARGB(255, 205, 179, 255),
                  onPressed: () => handleOperationPress("-"),
                ),
                SignButton(
                  text: "x",
                  btnColor: const Color.fromARGB(255, 205, 179, 255),
                  onPressed: () => handleOperationPress("*"),
                ),
              ],
            ),
            Row(
              children: [
                SignButton(
                  text: "/",
                  btnColor: const Color.fromARGB(255, 205, 179, 255),
                  onPressed: () => handleOperationPress("/"),
                ),
                SignButton(
                  text: "=",
                  btnColor: const Color.fromARGB(255, 43, 230, 255),
                  onPressed: () => handleOperationPress("="),
                ),
                SignButton(
                  text: "C",
                  btnColor: const Color.fromARGB(255, 255, 109, 109),
                  onPressed: () => handleOperationPress("C"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
