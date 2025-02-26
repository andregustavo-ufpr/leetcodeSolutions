class Solution {
  int distance(int x){
    return x*x;
  }

  int findClosestNumber(List<int> nums) {
    int closest = nums.first;
    
    for(int number in nums){
        if(distance(number) < distance(closest)){
            closest = number;
        }
    }

    return nums.contains(closest.abs()) ? closest.abs() : closest;
  }
}