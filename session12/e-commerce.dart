import 'model/digital_product.dart';
import 'model/manage_inventory.dart';
import 'model/physical_product.dart';

main(){


  ManageInventory invtory=ManageInventory();
  PhysicalProduct electronic = PhysicalProduct(name: "Microwave", id: 1 ,stock: 10 ,price: 250 ,category: "Electonic");
  DigitalProduct download =DigitalProduct(name: "image", id: 1 ,dContent : "1111 " ,price: 500 ,category: "loive" ,licenseskey: 5);
  invtory.add(electronic);
  invtory.add(download);
  print("-------------------");
  invtory.displayAll();
  print("-------------------");
  print( "total value is ${invtory.totalValue()}");
  print("-------------------");

  print( "th item you search  ${invtory.searchByCategory("Electonic")}");
  print("-------------------");

  print(  electronic.discount(10));
  print("-------------------");

  print(  download.discount(10));

}










