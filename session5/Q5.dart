/*
Write a function that takes a sentence as input and returns the longest word in the sentence.
If multiple words have the same longest length, return the first one that appears.
 */

main(){
longest(''' 
how you can convert this function to Dart sentence zunction
''');
}

longest(String sentence) {

List<String> words =sentence.trim().split(" ").where((sentence)=>sentence.isNotEmpty).toList();
int theLongest=words[0].length;
String theLongestword= words[0];

for(var item in words){
  if(item.length > theLongest){
    theLongest=item.length;
    theLongestword = item;
  }

}
print("$theLongestword , $theLongest ");
}


