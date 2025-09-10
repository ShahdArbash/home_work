void main() {
  print(containsDuplicate([1, 2, 3]));
}

bool containsDuplicate(List<int> nums) {
  Map<int, int> numbers = {};
  for (int i = 0; i < nums.length; i++) {
    if (numbers.containsKey(nums[i])) {
      numbers[nums[i]] = numbers[nums[i]]! + 1;
    } else {
      numbers[nums[i]] = 1;
    }
  }
  for (var element in numbers.values) {
    if (element >= 2) {
      return true;
    }
  }
  return false;
}
