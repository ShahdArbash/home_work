/* 
 Q5
 Create a class Book with private fields _title and _pages.
 - Add setters: reject empty titles and pages ≤ 0.
 - Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
 - In main(), create a book, print its title and estimated reading time
*/
void main() {
  Book myBook = Book();
  myBook.title = 'shahd';
  myBook.pages = 100;
  print('${myBook.title} ${myBook.readingTime}');
}

class Book {
  String? _title;
  int? _pages;
  set title(String title) {
    if (title != '') {
      this._title = title;
    }
  }

  set pages(int pages) {
    if (pages > 0) {
      this._pages = pages;
    }
  }

  String get title => this._title!;

  int get readingTime {
    return 2 * this._pages!;
  }
}
