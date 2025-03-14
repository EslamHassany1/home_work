/*
Write a function that takes a list of numbers and returns the sum of all elements.
 */
main(){

  print(sumNumbers([1,2,3,4,5]));
}

double sumNumbers (List<double>numbers ){
  double sum=0;
  for(var item in numbers){
    sum+=item;
  }
  return sum;
}