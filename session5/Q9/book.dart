class Book{
  final String title;
  final String author;
  final String isbn;
  bool isAvailable ;
  Book({required this.title , required this.author, required this.isbn , this.isAvailable=false});
}