/* 
Exercise 2:
2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one.
*/
void main() {
  String country = 'Hama';
  int year = 2003;
  double weight = 57;
  bool likesCoding = true;
  print(
      'my country is: $country \nmy year is:$year \nmy weight is: $weight \nlikesCoding? $likesCoding ');
  weight = 58;
  print(weight);
}
