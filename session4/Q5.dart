/*
Write a function `uniqueNames(List<String> names)` that:
- Accepts a list of names.
- Returns a Set containing only unique names.
Call the function inside `main()` and print the result.
 */

main(){
  List<String> names =[
    "ahmed",
   " mohamed ",  "ahmed",
    " mohamed ",  "ahmed",
    " mohamed ",
  ];
  Set <String> uniqe= uniqueNames(names);
print(uniqe);

}

uniqueNames(List<String> names){
Set<String >unique = {};
for(var Item in names){
  unique.add(Item);
}

return unique;
}

