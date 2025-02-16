/*
Create a program that asks the user to input a number and checks if it's positive, negative, or zero
using if-else statements.
 */
import 'dart:io';

main(){

  print("enter the number");
  num number = num.parse(stdin.readLineSync()!);
  if(number >0 ){
    print("Number is positive");

  }else if(number <0 ){
    print("Number is negative");

  }else{
    print("Number is zero");

  }
}