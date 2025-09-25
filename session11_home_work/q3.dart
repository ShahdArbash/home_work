/*
Q3
 Given an array of integers nums sorted in ascending order, and an integer target, write a function to
 search target in nums.
 - If target exists, return its index. Otherwise, return -1.
 - The algorithm must run in O(log n) time complexity.
 Examples:- Input: nums = [-1,0,3,5,9,12], target = 9 → Output: 4
 Explanation: 9 exists in nums and its index is 4.- Input: nums = [-1,0,3,5,9,12], target = 2 → Output: -1
 Explanation: 2 does not exist in nums, so return -1
 */
void main() {}

int Search(List<int> numbers, int numberSearch) {
  int start = 0;
  int end = numbers.length - 1;
  int indexMid;
  while (start <= end) {
    indexMid = start + ((end - start) ~/ 2);

    if (numbers[indexMid] == numberSearch) {
      return indexMid;
    } else if (numbers[indexMid] < numberSearch) {
      start = indexMid + 1;
    } else {
      end = indexMid - 1;
    }
  }

  return -1;
}

int search(List<int> numbers, int numberSearch) {
  int indexMid = numbers.length ~/ 2;
  if (numberSearch == numbers[indexMid]) {
    return indexMid;
  } else if (numberSearch > numbers[indexMid]) {
    for (int i = indexMid + 1; i < numbers.length; i++) {
      if (numberSearch == numbers[i]) {
        return i;
      }
    }
  } else {
    for (int i = 0; i < indexMid; i++) {
      if (numberSearch == numbers[i]) {
        return i;
      }
    }
  }
  return -1;
}
