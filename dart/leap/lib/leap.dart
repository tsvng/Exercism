class Leap {
  bool leapYear(int inputYear) {
    bool isLeapYear = false;
    if (inputYear % 4 == 0) {
      if (inputYear % 100 == 0) {
        if (inputYear % 400 == 0) isLeapYear = true;
      } else {
        isLeapYear = true;
      }
    }
    return isLeapYear;
  }
}
