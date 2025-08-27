/*
Question 12
Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length.
 */
void main() {
  Map<String, dynamic> phoneNumbers = {
    'Shahd': '0954472450',
    'ossima': '0958872450',
    'Hassan': null
  };
  if (phoneNumbers['Hassan'] == null) {
    print('the phonr number is null');
    phoneNumbers['Hassan'] = '0954472458';
  }
  phoneNumbers['Hassan'] = '0954472458';
  print(phoneNumbers['Hassan'].length);
  print(phoneNumbers['Hassan']);
}
