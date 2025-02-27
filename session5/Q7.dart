/*
Write a function that takes a string as input and returns the string reversed.
 */
main() {


print(reverseWord("hassan"));
}

  

String reverseWord(String word){
return  word.split("").reversed.join("");
}

// split
// بتفصل الكلمات  او الحروف بناء علي pattern
// وبترجع List
//.reversed من خصائص الليست انها تعكس الترتيب
// وبترجع Iterable
// join
// بتجمع بناء علي pattern وبترجع string