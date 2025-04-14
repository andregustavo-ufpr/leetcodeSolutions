class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    final counter = <String, int>{};

    for(String letter in magazine.split("")){
        counter[letter] = (counter[letter] ?? 0) + 1;
    }

    for(String letter in ransomNote.split("")){
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

    return true;
  }
}