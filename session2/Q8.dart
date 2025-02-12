/*

- Create an integer variable temperature.
- If temperature is above 30, print 'It's hot!'.
- If it's between 15 and 30, print 'It's warm.'.
- Otherwise, print 'It's cold.'
*/

main() {
  int temperature = 50;
  bool isHot = temperature > 30;
  bool isWarm = temperature >= 15 && temperature <= 30;
  if (isHot) {
    print("It's hot!'");
  } else if (isWarm) {
    print("It's warm.");
  } else {
    print("It's cold.");
  }

  /*
ممكن استخدم دايركت 
If 
بس انا حبيت ادرب نفسي علي استخدم ال
bool 
علشان هحتاجها لو حبيت استخدم الاتشك دي ف اكتر من مكان بعد كده
  */
}
