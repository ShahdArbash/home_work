/*
 Q1 Create a class City with attributes name and population. In main(), create two city objects and
 print their details.
 */
void main() {
  City hama = City(name: 'hama', population: 125);
  City homs = City(name: 'homs', population: 124);
  print('${homs.name} ${homs.population}');
  print('${hama.name} ${hama.population}');
}

class City {
  String? name;
  int? population;

  City({required String name, required int population}) {
    this.name = name;
    this.population = population;
  }
}
