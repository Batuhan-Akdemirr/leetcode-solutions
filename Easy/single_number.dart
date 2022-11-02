void main(List<String> args) {
  print(Solution().singleNumber([4, 1, 2, 1, 2]));
}

class Solution {
  int singleNumber(List<int> nums) {
    nums.sort();

    if (nums.length == 1) {
      return nums[0];
    }
    for (int i = 0; i < nums.length; i = i + 2) {
      if (i == nums.length - 1) {
        return nums[i];
      }
      if (nums[i] != nums[i + 1]) {
        return nums[i];
      }
    }

    return 0;
  }
}



/* class Solution {
  int singleNumber(List<int> nums) {
      int ans = 0;
        for (int i = 0; i < nums.length; i++){
            ans ^= nums[i];
        }
        return ans;
  }
} */