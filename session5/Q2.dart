<<<<<<< HEAD
/*
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.
 */

main(){

 print(converter(100, "F"));
}


num converter(num value , String unit){
  switch(unit.toUpperCase()){
    case "F" :return (1.8*value)+32;
    case "C" :return (value-32)/1.8;
    default : throw Exception("wrong choose");


  }

=======
/*
Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
Convert accordingly and return the result.
 */

main(){

 print(converter(100, "F"));
}


num converter(num value , String unit){
  switch(unit.toUpperCase()){
    case "F" :return (1.8*value)+32;
    case "C" :return (value-32)/1.8;
    default : throw Exception("wrong choose");


  }

>>>>>>> 156a77c6d3b008c19184eaf5d076ffafc0a9921c
}