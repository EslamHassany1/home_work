import 'package:untitled/session12/model/product.dart';

class DigitalProduct extends Products{
  int  licenseskey;
  String  dContent ;
  @override
  double discount(double discount) {
    double  afterDiscount = price -(price * discount /100);
    return afterDiscount;
  }
  DigitalProduct( {required super.category, required super.id,required super.name,required super.price , required this.dContent ,required this.licenseskey});

  @override
  void showItem() {
    print(" ID : $id  , Name :  $name  , Price : $price , License Key :  $licenseskey , DownloadContent : $dContent");

  }

}