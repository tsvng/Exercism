import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int input) {
    List<String> numStringified = input.toString().split('');
    int numDigits = numStringified.length;
    num totalSum = 0;
    numStringified
        .forEach((element) => totalSum += pow(int.parse(element), numDigits));

    return totalSum == input;
  }
}
