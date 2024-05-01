class Calculator {
  double num1 = 0.0;
  double num2 = 0.0;
  String sign = "";

  double calculate() {
    switch (sign) {
      case '+':
        return num1 + num2;
      case '-':
        return num1 - num2;
      case '*':
        return num1 * num2;
      case '/':
        return num1 / num2;
      default:
        return 0.0;
    }
  }

  void reset() {
    num1 = 0.0;
    num2 = 0.0;
    sign = "";
  }
}