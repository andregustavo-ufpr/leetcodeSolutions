class Solution {
  String longestCommonPrefix(List<String> strs) {
    int minLength = 
      strs.fold(
        strs[0].length, 
        (previous, current) => previous < current.length ? 
          previous 
        : 
          current.length
      ),
      i = 0;
    String first = strs.first;
    
    while(i < minLength){
      for(String str in strs){
        if(str[i] != first[i]) 
          return str.substring(0, i);
      }

      i++;
    }

    return first.substring(0, i);
  }
}