abstract class Products{
  String name;
  int price;
  int id ;
  String category;
  double discount(double discount);
  void showItem();
  Products( {required this.name,required this.price,required this.category ,required this.id});
}