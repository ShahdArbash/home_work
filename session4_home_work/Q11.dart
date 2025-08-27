/*
Question 11
Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.
 */
void main() {
  double discount;
  double price = 200;
  String stateUser = 'student';
  if (stateUser == 'student') {
    discount = 0.5;
    price = price - price * discount;
  } else if (stateUser == 'coupon') {
    discount = 0.4;
    price = price - price * discount;
  } else if (price > 150) {
    discount = 0.3;
    price = price - price * discount;
  }
  print('the totle price after discount is: $price ');
}
