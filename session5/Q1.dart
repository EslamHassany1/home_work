/*
Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
Handle cases where division by zero might occur.
 */
import 'dart:io';
import 'dart:math';

main(){
  print(basicArithmetic(6, 0, "/"));

}

double basicArithmetic(double num1 , double num2 , String operator){

switch (operator){
  case "+" :return num1+num2;
  case "-":return num1-num2;
  case "*":return num1*num2;
  case "/":if(num2==0){
     throw Exception("cannot divide by zero");
  }else{
    return num1/num2;
  }
  default : throw Exception("Wrong Operator");
}

}