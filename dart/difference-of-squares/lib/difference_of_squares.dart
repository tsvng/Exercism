import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int input) {
    int sum = 0;
    for (int i = 1; i <= input; i++) sum += i;
    return pow(sum, 2).toInt();
  }

  int sumOfSquares(int input) {
    int sum = 0;
    for (int i = 1; i <= input; i++) sum += pow(i, 2).toInt();
    return sum;
  }

  int differenceOfSquares(int input) =>
      squareOfSum(input) - sumOfSquares(input);
}
