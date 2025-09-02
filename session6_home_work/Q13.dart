/*
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.
 */

import 'dart:io';

void main() {
  List<int> nums = [];
  String? inputList = stdin.readLineSync();
  if (inputList != null) {
    String listnum = inputList.replaceAll('[', '').replaceAll(']', '');
    List<String> splitList = listnum.split(',');
    nums = splitList.map(int.parse).toList();
  }
  String? inputTarget = stdin.readLineSync();
  int target = int.parse(inputTarget ?? '0');
  print(findIndex(nums: nums, target: target));
}

List findIndex({required List nums, required int target}) {
  List<int> index = [];
  for (int i = 0; i < nums.length; i++) {
    for (int j = i; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        index.addAll([i, j]);
      }
      if (index.isNotEmpty) {
        return index;
      }
    }
  }
  return index;
}
