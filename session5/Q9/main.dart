<<<<<<< HEAD


import 'book.dart';
import 'library_list_manager.dart';

main(){

  LibraryListManager libraryManager = LibraryListManager();

libraryManager.addBook(book: Book(title: "Solo Leveling", author: "song young", isbn: "123" ));
libraryManager.addBook(book: Book(title: "run", author: "eslam", isbn: "123" ));
libraryManager.addBook(book: Book(title: "kafaka 3ala ashate", author: "kafaka", isbn: "123" ));


libraryManager.borrowBook(asbn: "123");
  libraryManager.displaylibrary();
  print("--------------------");
  libraryManager.borrowBook(asbn: "123");
  print("--------------------");
  libraryManager.returnBook(asbn: "123");
  libraryManager.displaylibrary();
  print("--------------------");
  libraryManager.searchByTitle(title: "run");
=======


import 'book.dart';
import 'library_list_manager.dart';

main(){

  LibraryListManager libraryManager = LibraryListManager();

libraryManager.addBook(book: Book(title: "Solo Leveling", author: "song young", isbn: "123" ));
libraryManager.addBook(book: Book(title: "run", author: "eslam", isbn: "123" ));
libraryManager.addBook(book: Book(title: "kafaka 3ala ashate", author: "kafaka", isbn: "123" ));


libraryManager.borrowBook(asbn: "123");
  libraryManager.displaylibrary();
  print("--------------------");
  libraryManager.borrowBook(asbn: "123");
  print("--------------------");
  libraryManager.returnBook(asbn: "123");
  libraryManager.displaylibrary();
  print("--------------------");
  libraryManager.searchByTitle(title: "run");
>>>>>>> 156a77c6d3b008c19184eaf5d076ffafc0a9921c
}