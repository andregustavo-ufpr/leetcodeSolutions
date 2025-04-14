class Solution {
  bool isAnagram(String s, String t) {
    final counter = <String, int>{};

    for(String letter in s.split("")){
      counter[letter] = (counter[letter] ?? 0) + 1;
    }

    for(String letter in t.split("")){
      if(counter[letter] == null){
        return false;
      }
      else if(counter[letter] == 1){
        counter.remove(letter);
      }
      else{
        counter[letter] = (counter[letter] ?? 0) - 1;
      }
    }

    return counter.isEmpty;
  }
}