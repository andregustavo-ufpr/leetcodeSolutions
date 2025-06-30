class Solution {
  bool containsDuplicate(List<int> nums) {
    final sol = <int>{};

    for(int number in nums){
        if(sol.contains(number)){
            return true;
        }

        sol.add(number);
    }

    return false;
  }
}