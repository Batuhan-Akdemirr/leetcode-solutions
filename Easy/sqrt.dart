void main(List<String> args) {
  print(Solution().mySqrt(12));
}

class Solution {
  int mySqrt(int x) {
    double temp, sqrt;
    sqrt = x / 2;
    temp = 0;

    while (sqrt != temp) {
      temp = sqrt;
      sqrt = (x / temp + temp) / 2;
    }

    return sqrt.toInt();
  }
}
