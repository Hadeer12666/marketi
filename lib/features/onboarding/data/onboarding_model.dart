class OnBoardingModel {
  final String title;
  final String subTitle;
  final String image;

  OnBoardingModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });

  static final List<OnBoardingModel> onBoardingData = [
    OnBoardingModel(
      title: "Welcome to Marketi",
      subTitle:
          "Discover a world of endless possibilities and shop from the comfort of your fingertips Browse through a wide range of products, from fashion and electronics to home.",
      image: "assets/images/onboarding/Illustration_Onboarding_1.png",
    ),
    OnBoardingModel(
      title: "Easy to Buy",
      subTitle:
          "Find the perfect item that suits your style and needs With secure payment options and fast delivery, shopping has never been easier.",
      image: "assets/images/onboarding/Illustration_Onboarding_2.png",
    ),
    OnBoardingModel(
      title: "Wonderful User Experience",
      subTitle:
          "Start exploring now and experience the convenience of online shopping at its best.",
      image: "assets/images/onboarding/Illustration_Onboarding_3.png",
    ),
  ];
}
