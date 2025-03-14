<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:prolect_test/screens/classes/actionbutton.dart';

Widget customAction() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomActionButton(Icons.call, 'CALL', Colors.blue),
        CustomActionButton(Icons.near_me, 'ROUTE', Colors.green),
        CustomActionButton(Icons.share, 'SHARE', Colors.purple),
      ],
    ),
  );
}
=======
import 'package:flutter/material.dart';
import 'package:prolect_test/screens/classes/actionbutton.dart';

Widget customAction() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomActionButton(Icons.call, 'CALL', Colors.blue),
        CustomActionButton(Icons.near_me, 'ROUTE', Colors.green),
        CustomActionButton(Icons.share, 'SHARE', Colors.purple),
      ],
    ),
  );
}
>>>>>>> 156a77c6d3b008c19184eaf5d076ffafc0a9921c
