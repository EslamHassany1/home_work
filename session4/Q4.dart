/*
Declares a `Map<String, int>` where keys are fruit names and values are their
prices.
- Implements a function `getPrice(String fruitName)` that returns the price of a
given fruit.
- If the fruit is not found, return -1.
Call the function inside `main()` and print the result.
 */

main(){

  Map<String, int> fruitStore={
    "apple" : 15 ,
    "bannana"  : 20,
  };
   getPrice("bannana",  fruitStore);
}

 int getPrice(String fruitName ,Map<String, int> fruitStore){

   if(fruitStore.containsKey(fruitName)){
     print( " $fruitName = ${fruitStore[fruitName]}");
    return 1;
   }
   return -1;

}