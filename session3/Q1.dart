/*
Create a Dart program that takes two numbers as input and performs addition, subtraction,
multiplication, and division using variables, arithmetic operators, and functions. Also, include
optional parameters for different operations (e.g., addition of multiple numbers).

 */

import 'dart:io';

main(){

  print("enter the first number ");
  double number1 = double.parse(stdin.readLineSync()!);
  print("enter the second number ");
  double number2 = double.parse(stdin.readLineSync()!);

  print(add(number1, number2));
  print(subtract(number1, number2));
  print(multiply(number1, number2));
  print(addMultipleNumbers(number1, number2 , 10 , 15));

}

double add(double num1 , double num2) => num1+num2;
double subtract(double num1 , double num2) => num1-num2;
double multiply(double num1 , double num2) => num1*num2;
double divide(double num1 , double num2) {
  if(num2==0) {
    print("cant divide by zero");
  }
    return num1 / num2;
  }
  double addMultipleNumbers(double num1 , num2 , [num3 = 0 , num4 = 0])=>num1+num2+num3+num4;


