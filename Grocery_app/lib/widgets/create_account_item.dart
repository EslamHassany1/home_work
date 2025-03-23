import 'package:final_grocery_app/model/button_model.dart';
import 'package:final_grocery_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CreateAccountItem extends StatelessWidget {
  const CreateAccountItem({super.key, required this.btnModel});
  final ButtonModel btnModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CreateBtn(btnModel: btnModel),
          CreateBtn(btnModel: btnModel),
        ],
      ),
    );
  }
}
