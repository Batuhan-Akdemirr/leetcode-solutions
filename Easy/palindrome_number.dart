void main(List<String> args) {
  print(Solution().isPalindrome(131));
}

class Solution {
  bool isPalindrome(int x) {
    List<int> numberofDigitsArray = _arrayNumberOfDigits(x);
    int counter = 0;

    if (x == 0) {
      return true;
    }
    if (x > 0) {
      for (int i = 0, j = numberofDigitsArray.length - 1; i < numberofDigitsArray.length / 2; i++, j--) {
        if (numberofDigitsArray.elementAt(i) == numberofDigitsArray.elementAt(j)) {
          counter++;

          if (numberofDigitsArray.length.isEven) {
            if (counter == (numberofDigitsArray.length ~/ 2) ) return true;
          } else {
            if (counter == (numberofDigitsArray.length ~/ 2) + 1) return true;
          }
        }
      }
    }

    return false;
  }

  List<int> _arrayNumberOfDigits(int value) {
    List<int> array = [];
    int number;
    while (value > 0) {
      number = value % 10;
      value = value ~/ 10;
      array.add(number);
    }

    return array.reversed.toList();
  }
}
/* 

Given an integer x, return true if x is palindrome integer.
An integer is a palindrome when it reads the same backward as forward.
For example, 121 is a palindrome while 123 is not.

Example 1
Input: x = 121
Output: true
Explanation: 121 reads as 121 from left to right and from right to left.

Example 2
Input: x = -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.

Example 3

Input: x = 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 */