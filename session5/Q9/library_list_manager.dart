/*
Create a system to manage books in a library.
Implement a Book class with properties like title, author, isbn, and isAvailable.
Implement a Library class with methods:
- addBook(Book book): Adds a book to the library.
- borrowBook(String isbn): Marks a book as borrowed if available.
- returnBook(String isbn): Marks a book as available again.
- searchByTitle(String title): Returns books matching the title.
Ensure that the system correctly updates the book's availability.
 */



import 'book.dart';

class LibraryListManager{
 final List<Book>_booksList =[];


  void addBook({required Book book }){
   _booksList.add(book);
   book.isAvailable=true;
  }


  /* void removeBook({required String title  }){
    for(Book item in booksList){
      if(item.title == title){
        booksList.remove(item);
        print("deleted");
      }
    }
  }
*/

 bool borrowBook({required String asbn }){
    for(Book item in _booksList){
      if(item.isbn == asbn){
        if(item.isAvailable ){
          item.isAvailable=false;
          return true;
        }else{
          print("its out");
          return false;
        }
      }
    }
    return false ;
  }

  bool returnBook({required String asbn }){
    for(Book item in _booksList){
      if(item.isbn == asbn){ // لو الكتاب موجود
        if(item.isAvailable == false ){ // المفروض الحالة بتاعته فولص لانه طلع استعارة
          item.isAvailable=true; /// رجعها ترو تاني
          return true; /// تم التغير بنجاح
        }
      }
    }
    return false ; // الكتاب دا مش من عندنا يا ابله
  }

  searchByTitle({required String title }){
    bool found = false;
    for(var item in _booksList){
      if(item.title.contains(title)){
        print("Is Found");
        found=true;
      }
    }
if (!found) {

     print("Not Found");

   }
  }

  displaylibrary(){
    _booksList.forEach((element){
      print("${element.title},${element.author}, ${element.isAvailable}");
    });

  }

 }







