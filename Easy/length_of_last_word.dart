void main(List<String> args) {
  print(Solution().lengthOfLastWord("joyboy          dssd        "));
}

class Solution {
  int lengthOfLastWord(String s) {
    int counter = 0;
    bool foundEndWord = false;
    for (int i = s.length - 1; i >= 0; i--) {
      if (s[i] != " ") {
        counter++;
        foundEndWord = true;
      } else if (foundEndWord) {
        return counter;
      }
    }
    return counter;
  }
}


/* Given a string s consisting of words and spaces, return the length of the last word in the string.

A word is a maximal substring consisting of non-space characters only. */