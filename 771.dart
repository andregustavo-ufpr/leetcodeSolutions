class Solution {
  int numJewelsInStones(String jewels, String stones) {
    int result = 0;
    
    for(String stone in stones.split("")){
        if(jewels.contains(stone)) result++;
    }

    return result; 
  }
}