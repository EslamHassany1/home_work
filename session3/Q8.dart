/*
Write a Dart program that checks if a number is within a specified range using logical operators and
prints the result.
 */

import 'dart:io';

main (){
print("enter the number");
num target = num.parse(stdin.readLineSync()!);
print("enter the hights Range");
num maxRang = num.parse(stdin.readLineSync()!);

print("enter the Lowest Range");
num lowRang = num.parse(stdin.readLineSync()!);

if(target >= lowRang && target <= maxRang){
print("The Number with The Range")  ;
}else{
  print("The Number outside The Range")  ;
}



}