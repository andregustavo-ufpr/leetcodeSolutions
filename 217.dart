class Solution {
  bool containsDuplicate(List<int> nums) {
    Map<int, String> sol = {};

    for(int number in nums){
      if(sol[number] != null){
        return true;
      }

      sol[number] = "";
    }

    return false;
  }
}