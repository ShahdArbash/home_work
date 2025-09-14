/*
 Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
 only the movies with a rating above 7.
 */
void main() {
  List<Movie> movies = [
    Movie(title: 'shahd', rating: 10),
    Movie(title: 'ask', rating: 5.5),
    Movie(title: 'last', rating: 8),
    Movie(title: 'saso', rating: 7)
  ];
  for (var element in movies) {
    if (element.rating! > 7) {
      print('${element.title} ${element.rating}');
    }
  }
}

class Movie {
  String? title;
  num? rating;
  Movie({required String title, required num rating}) {
    this.title = title;
    this.rating = rating;
  }
}
