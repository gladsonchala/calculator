class Calculator {
  double num1 = 0.0;
  double num2 = 0.0;
  String sign = "";
  double total = 0.0;

  double add(double num1, double num2) {
    return num1 + num2;
  }

  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  double divide(double num1, double num2) {
    return num1 / num2;
  }

  double calculate(double num1, double num2, String sign) {
    if (sign == '+') {
      return add(num1, num2);
    } else if (sign == '-') {
      return subtract(num1, num2);
    } else if (sign == '*') {
      return multiply(num1, num2);
    } else if (sign == '/') {
      return divide(num1, num2);
    } else {
      return 0.0;
    }
  }
}
