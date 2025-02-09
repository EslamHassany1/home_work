/*  If you need a variable that can hold any type of value and may change during
execution, which data type would you use? Write a code example to show this */

// i will use dynamic data Type

void main() {
  // i will use dynamic data Type

  dynamic example = "name"; // هنا القيمة نصية
  print(example);

  example = 10; // هنا اتغيرت القيمة ومفيش مشكلة حتي لو اتغيرت لقيمة عدادية
  print(example + 10);
  example = true; // تم تغير القيمة ل bool ومفيش مشكلة
  print(example);
}
