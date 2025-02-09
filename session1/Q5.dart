/* What is the difference between var and dynamic in Dart? Provide an example of
each*/

/*
var
تعتبر keyword  
مش dataType 

غير انها مش بتقدر تغير التايب بتاع الداتا تايب بتاعتها حتي لو اتغيرت الداتا فيما بعد 
مثال 


var name = "ahmed"; 
name = 10 ; 
هنا هيبقي في ايرور علي ال 10 علشان هي 
int 
وخلاص هو عرف المتغير دا انه
String
----------------
dynamic 
 
 بتقدر تغير الداتا تايب كل مره يحصل 
 تغيير للداتا 

dynamic name = " ahmed";

name = 10 ; 
name = 10.55; 
print(name);
هنا مش هيكون في اي مشكلة و وقت ال
runtime 
هياخد اخر قيمة  اللي هي 10.55
*/