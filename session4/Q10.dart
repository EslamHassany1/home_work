/*
Create a list of 5 words.
- Iterate through the list using a for-each loop.
- Convert each word to uppercase.
- Print each word in uppercase.
 */

main(){

  List<String>word = [ "word1" , "word2","word3","word4","word5" ];

  word.forEach((element){

    print(element.toUpperCase());
  });





}