void main(List<String> args) {
  print(Solution().removeElement([0, 1, 2, 2, 3, 0, 4, 2], 2));
}

class Solution {
  int removeElement(List<int> nums, int val) {
    int temp = nums.length;

    for (int i = 0; i < temp; i++) {
      if (nums.elementAt(i) == val) {
        nums.removeAt(i);
        i--;
        temp--;
      }
    }

    return nums.length;
  }
}
