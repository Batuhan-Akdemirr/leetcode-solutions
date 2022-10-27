void main(List<String> args) {
  print(Solution().searchInsert([1, 3, 5, 6], 2));
}

class Solution {
  int searchInsert(List<int> nums, int target) {
    if (nums.contains(target)) {
      nums.sort();

      for (int i = 0; i < nums.length; i++) {
        if (nums.elementAt(i) == target) return i;
      }
    } else {
      nums.add(target);
      nums.sort();
      return nums.indexOf(target);
    }

    return -1;
  }
}









/* Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with O(log n) runtime complexity.  */