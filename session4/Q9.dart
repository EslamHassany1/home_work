/*
Create a class `Rectangle` with:
- Private attributes `_width` and `_height`.
- A constructor that initializes the values.
- A getter `area` that calculates and returns the area.
In `main()`, create a `Rectangle` object and print its area.
 */

main(){
Rectangle object = Rectangle(10, 50);
print(object.area);
}
class Rectangle{
  double _width;
  double _height;

get area{
  return _width*_height;
}
  Rectangle(this._width, this._height);
}