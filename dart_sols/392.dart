class Solution {
  bool isSubsequence(String s, String t) {
    int sI = 0, tI = 0;

    if(s.length > 0 ){
      for(tI; tI < t.length; tI++){
        if(t[tI] == s[sI]){
          sI++;
        }

        if(sI == s.length) break;
      }
    }

    return sI == s.length;
  }
}