/*
Write a function that counts the number of words in a given sentence.
Words are separated by spaces, and the function should ignore extra spaces
 */

main(){
words("Words are separated by        spaces");

}
void words(String sentence){
  List<String> words = sentence.trim().split(" ").where((sentence)=>sentence.isNotEmpty).toList();
  print( words.length);
}

/*
.trim علشان تشيل البداية والنهاية الفارغة
.split علشان تفصل كل كلمة بناء علي مسافة واحده
.where علشان لو في مسافتين او اكتر ف الجملة
split
هتعتبرهم كلهم ف احنا بنعمل اتشك ان الكلمة مش فاضية
.where بترجع
Iterable
uعلشان كده بنحولها ل list
علشان نقدر نخزنها ف words
 */


