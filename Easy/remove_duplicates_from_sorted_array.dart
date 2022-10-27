void main(List<String> args) {
  print(Solution().removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]));
}

class Solution {
  int removeDuplicates(List<int> nums) {
    int counter = nums.length;

    for (int i = 0; i < counter-1; i++) {
      if (nums.elementAt(i) == nums.elementAt(i + 1)) {
        nums.removeAt(i );
        i--;
        counter--;
      }
    }
    return nums.length;
  }
}


/*  for (int i = 0; i <counter; i++) {
      if (tempList.contains(nums.elementAt(i))) {
        nums.removeAt(i);
        i--;
        counter--;
      }

      if (!tempList.contains(nums.elementAt(i))) {
        tempList.add(nums.elementAt(i));
      }
    } */








/* Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same.

Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

Return k after placing the final result in the first k slots of nums.

Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.  */