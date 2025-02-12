/*
- Create an integer variable marks.
- If marks is 70 or higher, print 'Passed', otherwise print 'Failed'.
*/

import 'dart:io';

main() {
  print("enter your mark");
  int marks = int.parse(stdin.readLineSync()!);
  bool isPassed = marks >= 70;
  if (isPassed) {
    print(
      'Passed',
    );
  } else {
    print("Failed");
  }

  /*
ممكن استخدم دايركت 
If 
بس انا حبيت ادرب نفسي علي استخدم ال
bool 
علشان هحتاجها لو حبيت استخدم المتغير دا ف اكتر من مكان بعد كده
  */
}
