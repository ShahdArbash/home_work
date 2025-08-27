/*
Question 15
Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.
 */
void main() {
  String path = '/';
  Map<String, dynamic> router = {
    '/': 'general',
    '/products': 'products',
    '/profile': 'profile'
  };
  switch (path) {
    case '/':
      print(router['/']);
      break;
    case '/products':
      print(router['/products']);
      break;
    case '/profile':
      print(router['/profile']);
      break;
    default:
      print('the path has other entrs');
  }
}
