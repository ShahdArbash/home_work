/* 
Q2
Create a program that stores country codes and names. Start with: EG → Egypt, SA → Saudi
Arabia, AE → UAE. Add QA → Qatar and then print the name of the country with the code EG.
*/
void main() {
  Map<String, dynamic> countryNames = {
    'EG': 'Egypt',
    'SA': 'Saudi Arabia',
    'AE': 'UAE',
    'QA': 'Qatar'
  };
  for (var kye in countryNames.keys) {
    print(countryNames[kye] + '--> ' + kye);
  }
}
