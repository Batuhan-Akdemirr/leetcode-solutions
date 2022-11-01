import 'dart:math';

void main(List<String> args) {
  print(Solution().addBinary('11100010011000000110', '1001000110100110111010'));
}

class Solution {
  String addBinary(String a, String b) {
    String binary = '';
    int maxValue = max(a.length, b.length);
    int minValue = min(a.length, b.length);
    bool elde = false;
    int sum = 0;
    late int aInteger;
    late int bInteger;
    a = a.split('').reversed.join();
    b = b.split('').reversed.join();
    String maxBinary = a.length > b.length ? a : b;

    for (int i = 0; i < maxValue; i++) {
      if (i < minValue) {
        aInteger = int.parse(a[i]);
        bInteger = int.parse(b[i]);
        sum = aInteger + bInteger;
        if (sum == 2) {
          if (elde) {
            binary = '1' + binary;
            elde = true;
          } else {
            binary = '0' + binary;
            elde = true;
          }
        } else {
          if (elde) {
            if (sum == 0) {
              binary = '1' + binary;
              elde = false;
            } else {
              binary = '0' + binary;
              elde = true;
            }
          } else {
            if (sum == 0) {
              binary = '0' + binary;
              elde = false;
            } else {
              binary = '1' + binary;
              elde = false;
            }
          }
        }
      } else {
        if (elde) {
          if (maxBinary[i] == '1') {
            binary = '0' + binary;
            elde = true; //
          } else {
            binary = '1' + binary;
            elde = false;
          }
        } else {
          binary = maxBinary[i] + binary;
        }
      }
    }

    if (elde) {
      binary = '1' + binary;
    }

    return binary;
  }
}




// Other best Solutions 

/*   

import 'dart:math' show max;

class Solution {
  String addBinary(String a, String b) {
    int maxLength = max(a.length, b.length);
    a = a.padLeft(maxLength, '0');
    b = b.padLeft(maxLength, '0');
    int remainder = 0;
    String result = "";

    for (int i = maxLength - 1; i >= 0; i--) {
      int v1 = int.parse(a[i]) + remainder;
      int v2 = int.parse(b[i]);
      result = ((v1 + v2) % 2).toString() + result;
      remainder = (v1 + v2) ~/ 2;
    }
    return remainder > 0 ? remainder.toString() + result : result;
  }
}
*/


/*  
class Solution {
  String addBinary(String a, String b) {
    int i = a.length - 1, j = b.length - 1, c = 0;
    final result = StringBuffer();
    while (i >= 0 || j >= 0 || c != 0) {
      if (i >= 0) c += a.codeUnitAt(i--) - 48;
      if (j >= 0) c += b.codeUnitAt(j--) - 48;
      result.writeCharCode(48 + c % 2);
      c ~/= 2;
    }
    return result.toString().split('').reversed.join('');
  }
}
 */