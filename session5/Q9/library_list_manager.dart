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

class Book{
 final String title;
 final String author;
 final String isbn;
  bool isAvailable ;
  Book({required this.title , required this.author, required this.isbn , this.isAvailable=false});
}

class LibraryListManager{
 final List<Book>booksList =[];
  void addBook({required Book book }){
   booksList.add(book);
  }
  void removeBook({required Book book  }){
    for(Book item in booksList){
      if(item.title == book.title){
        booksList.remove(item);
      }
    }
  }

 bool borrowBook({required String asbn }){
    for(Book item in booksList){
      if(item.isbn == asbn){
        if(item.isAvailable ){
          item.isAvailable=false;
          return true;
        }else{
          return false;
        }
      }
    }
    return false ;
  }

  bool returnBook({required String asbn }){
    for(Book item in booksList){
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
    for(var item in booksList){
      if(item.title == title){
        print("Is Found");
      }else{
        print("Not Found");
      }

    }
  }




}

main(){

 
}

