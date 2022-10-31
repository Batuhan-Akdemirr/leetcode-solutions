void main(List<String> args) {
  print(Solution().plusOne([9, 8, 7, 6, 5, 4, 3, 2, 1, 0]));
}

class Solution {
  List<int> plusOne(List<int> digits) {
    List<int> myDigits = List.filled(digits.length, 0);
    int counter = 1;
    bool flag = true;

    bool isNine = isNineMethod(digits);

    if (isNine) {
      int length = digits.length;
      digits.insert(0, 1);
      for (int i = 1; i <= length; i++) {
        digits[i] = 0;
      }

      return digits;
    } else {
      if (digits.last != 9) {
        digits.last = digits.last + 1;
        return digits;
      } else {
        int i = digits.length - 1;
        for (; i >= 0; i--) {
          if (flag) {
            for (int j = digits.length - 2; j >= 0; j--) {
              if (digits[j] == 9) {
                counter++;
              } else {
                i -= counter;
                flag = false;
                setZero(myDigits, digits, counter);
                break;
              }
            }

            setZero(myDigits, digits, counter);
          }

          // ignore: dead_code
          else {
            myDigits[i] = digits[i];
          }
        }
      }
    }

    return myDigits;
  }

  void setZero(List<int> myDigits, List<int> digits, int counter) {
    int i = myDigits.length - 1;
    for (i; i >= myDigits.length - counter; i--) {
      myDigits[i] = 0;
    }
    myDigits[i] = digits[i] + 1;
  }

  bool isNineMethod(List<int> digits) {
    bool isNine = true;
    int counter = 0;
    for (int i = digits.length - 1; i >= 0; i--) {
      if (digits[i] == 9) {
        counter++;
      }
    }
    if (counter == digits.length)
      return isNine;
    else
      return false;
  }
}

/*  
You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

Increment the large integer by one and return the resulting array of digits. */