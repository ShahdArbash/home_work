void main() {}

int singleNumber(List<int> nums) {
  int number = 0;
  Map numMap = {};

  for (int i = 0; i < nums.length; i++) {
    if (numMap.containsKey(nums[i])) {
      numMap[nums[i]] = numMap[nums[i]] + 1;
    } else {
      numMap[nums[i]] = 1;
    }
  }
  numMap.forEach(
    (key, value) {
      if (value == 1) {
        number = key;
      }
    },
  );
  return number;
}
