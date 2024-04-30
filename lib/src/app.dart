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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Basic Calculator"),
      ),
      body: const Center(
        child: Column(
          children: [
            Display(
              text: "0.0",
            ),
            Row(
              children: [
                NumberButton(num: 7),
                NumberButton(num: 8),
                NumberButton(num: 9),
              ],
            ),
            Row(
              children: [
                NumberButton(num: 4),
                NumberButton(num: 5),
                NumberButton(num: 6),
              ],
            ),
            Row(
              children: [
                NumberButton(num: 1),
                NumberButton(num: 2),
                NumberButton(num: 3),
              ],
            ),
            Row(
              children: [
                SignButton(
                    text: "+", btnColor: Color.fromARGB(255, 205, 179, 255)),
                SignButton(
                    text: "-", btnColor: Color.fromARGB(255, 205, 179, 255)),
                SignButton(
                    text: "x", btnColor: Color.fromARGB(255, 205, 179, 255)),
              ],
            ),
            Row(
              children: [
                SignButton(
                    text: "/", btnColor: Color.fromARGB(255, 205, 179, 255)),
                SignButton(
                    text: "=", btnColor: Color.fromARGB(255, 43, 230, 255)),
                SignButton(
                    text: "C", btnColor: Color.fromARGB(255, 255, 109, 109)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
