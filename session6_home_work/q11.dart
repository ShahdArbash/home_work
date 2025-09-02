/*
Q11
Create a function that takes a required product name and an optional discount percentage. If the
 discount is provided, print 'Product has discount %'. If not, print 'Product has no discount'.
 */
void main() {
  testProduct(name: 'labtop', discount: 20);
}

void testProduct({required String name, double discount = 0}) {
  if (discount > 0) {
    print('Product has $discount %');
  } else {
    print('Product has no discount');
  }
}
