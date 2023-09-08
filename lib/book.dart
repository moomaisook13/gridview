class Book {
  //Define Properties
  String name = '';
  String author = '';
  String cover = '';

  //Old Style Constructor
  // Book(String n, String a) {
  //   this.name = n;
  //   this.author = a;
  // }

  //Constructor
  Book({required this.name, required this.author, required this.cover});
}
