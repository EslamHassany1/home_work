main() {
  List<int> nums = [
    1,
    2,
    3,
    5,
  ];

  print(containsDuplicate(nums));
}

bool containsDuplicate(List<int> nums) {
  for (int i = 0; i < nums.length; i++) {
    //i==0 , [1]
    for (int j = i + 1; j < nums.length; j++) {
      // i=0  nums[i]==1  ,  j=1    nums[j]=2
      //i=0  nums[i]==1  , j=2    nums[j]=3,
      //i=0  nums[i]==1  , j=3    nums[j]=1,
      if (nums[i] == nums[j]) {
        return true;
      }
    }
  }
  return false;
}
