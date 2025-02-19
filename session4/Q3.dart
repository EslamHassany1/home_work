/*
Create a list of numbers. Iterate over the list and:
- If a number is even, print "Even: <number>".
- If a number is odd, print "Odd: <number>".
 */
main(){

List<int>numbers=[1,5,9,8,7,4,2,6,5];
for(var item in numbers){
  if(item %2==0){
    print("$item is even");
  }else{
    print("$item is Odd");
  }
}
}