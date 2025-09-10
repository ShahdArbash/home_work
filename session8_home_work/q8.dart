void main() {
  print(containsDuplicate([1, 2, 3, 1]));
}

bool containsDuplicate(List<int> nums) {
  Set numberSet = nums.toSet();
  if (nums.length > numberSet.length) {
    return true;
  } else
    return false;
}
