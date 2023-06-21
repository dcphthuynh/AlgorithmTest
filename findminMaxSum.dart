import 'dart:math';

void miniMaxSum(List<int> arr) {
  int minOfArray = 0;
  int maxOfArray = 0;
  int totalSum = 0;

  for (int i = 0; i < arr.length; i++) {
    totalSum += arr[i];
    minOfArray = min(minOfArray, arr[i]);
    maxOfArray = max(maxOfArray, arr[i]);
  }

  int minSumResult = totalSum - maxOfArray;
  int maxSumResult = totalSum - minOfArray;

  print('The minimum sum is: $minSumResult \nThe maximum sum is: $maxSumResult');
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  miniMaxSum(arr);
}
