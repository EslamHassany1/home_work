import 'package:final_grocery_app/constants/assets.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String description;
  final String? subText;
  OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
    this.subText,
  });
}

List<OnboardingModel> getOnboardingItem() {
  return [
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
    )
  ];
}
