/*
Implement a program that uses a List to store grocery items. It should allow adding, removing, and
displaying items. Use functions with return types and optional/named parameters. Make sure to
handle possible null values.
 */


import 'dart:io';

main() {

  List<String> items = [];
  int select=0;

  do {

    print("""
1 - add
2 - remove 
3 - displaying
4 - Exit
 """);
    select = int . parse(stdin.readLineSync()!);

    if (select == 1) {
      additems(items);

    } else if(select == 2){
      removeItem(items);
    }else if(select == 3){
      displayItem(items);
    }


  }while(select!= 4);

}


additems(List<String> item) {
  String adding;
  do {
    print("enter the item");
    String? item1 = stdin.readLineSync();
    if(item1!=null && item1.isNotEmpty){
      item.add(item1);
    }else{
      print("item cant be empaty");
    }
    print("do you want add more item Y/N");
    adding = stdin.readLineSync()!;
  } while (adding == "Y");

  print(item);
}

removeItem(List<String> item){
  for(int i =0 ; i<item.length;i++){
    print("${i+1} - ${item[i]}");
  }
  print("select number you want to delete");
  int numberDelete = int.parse(stdin.readLineSync()!);
  item.removeAt(numberDelete-1);

  print("The new List is $item");
}

displayItem(List<String> item){

  print(item);
}
