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

}