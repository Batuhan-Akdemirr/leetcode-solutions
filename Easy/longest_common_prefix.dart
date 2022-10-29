void main(List<String> args) {
  print(Solution().longestCommonPrefix(["floweradsdfd", "flower", "flower", "flower"]));
}

class Solution {
  String longestCommonPrefix(List<String> strs) {
    String prefix = '';
    if (strs.length == 0) return prefix;

    strs.sort(
      (a, b) => a.length.compareTo(b.length),
    );

    int min = strs.elementAt(0).length;
    for (int i = 0; i < min; i++) {
      String baseCharacter = strs.elementAt(0)[i];
      for (int j = 0; j < strs.length; j++) {
        if (baseCharacter != strs.elementAt(j)[i]) {
          return prefix;
        }

        if (j == strs.length - 1) {
          prefix = prefix + baseCharacter;
        }
      }
    }

    return prefix;
  }
}

/*  Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".*/