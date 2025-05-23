import 'package:final_grocery_app/constants/assets.dart';
import 'package:final_grocery_app/model/onboarding_model.dart';
import 'package:final_grocery_app/styles/app_colors.dart';
import 'package:final_grocery_app/views/create_account_view.dart';
import 'package:final_grocery_app/widgets/custom_button.dart';
import 'package:final_grocery_app/widgets/indecator_item.dart';
import 'package:final_grocery_app/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});
  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int index = 0;
  final List<OnboardingModel> items = [
    OnboardingModel(
      image: Assets.imagesBoaring1,
      subText: "Grocery application",
      title: "Welcome to Fresh Fruits",
      description:
          "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do eiusmod tempor ",
    ),
    OnboardingModel(
      image: Assets.imagesBoarding3,
      title: "We provide best quality\n Fruits to your family",
      description:
          "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed ",
    ),
    OnboardingModel(
      image: Assets.imagesBoarding3,
      title: "Fast and responsibily\n delivery by our courir ",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Flexible(
            flex: 6,
            fit: FlexFit.tight,
            child: OnboardingItem(item: items[index]),
          ),

          IndicatorItem(currentIndex: index, itemCount: items.length),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  index == items.length - 1
                      ? Column(
                        children: [
                          CustomBtn(
                            btnColor: Colors.black,
                            textColor: Colors.white,
                            title: "Create AN Account ",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return CreateAccountScreen();
                                  },
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 10),
                          CustomBtn(
                            btnColor: Colors.white,
                            textColor: Colors.black,
                            title: "LOGIN ",
                            onTap: () {},
                          ),
                        ],
                      )
                      : CustomBtn(
                        btnColor: AppColors.primaryColor,
                        textColor: Colors.black,
                        onTap:
                            () => {
                              setState(() {
                                if (index < items.length - 1) {
                                  index++;
                                }
                              }),
                            },
                        title: "NEXT",
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
