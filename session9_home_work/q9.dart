void main() {
  print(maxProfit([2, 4, 1]));
}

int maxProfit(List<int> prices) {
  int minPrice = prices[0];
  int maxProfit = 0;
  int profit = 0;

  for (int i = 1; i < prices.length; i++) {
    profit = prices[i] - minPrice;
    if (profit > maxProfit) {
      maxProfit = profit;
    }
    if (prices[i] < minPrice) {
      minPrice = prices[i];
    }
  }

  return maxProfit;
}
