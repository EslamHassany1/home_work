/*
Create a class with a few properties and methods. Instantiate the class and use the dot operator to
access and print its properties and methods.
 */
main(){

  Cars car1=Cars();
  print(car1 .number);
  print(car1 .modle );
  car1.walk();
}
class Cars{

  int number = 10212;
  String modle = "Tyoya";
  walk(){
    print("car walk");
  }

}