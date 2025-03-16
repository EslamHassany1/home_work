import 'package:untitled/session12/model/product.dart';

class ManageInventory{

  final  List<Products> _listOfProduct =[];

  void add(Products product){
    _listOfProduct.add(product);
  }
  void displayAll(){
    for(var item in _listOfProduct){
      item.showItem();
    }
  }


  bool searchByCategory(String category){
    for(var item in _listOfProduct){
      if(item.category == category){
        return true;
      }
    }
    return false;
  }

  double totalValue(){
    double total=0;
    for (var item in _listOfProduct){
      total+=item.price;
    }
    return total;
  }
}