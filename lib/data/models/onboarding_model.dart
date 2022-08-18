class OnboardingModel {
  String? imagePath;
  String? header;
  String? title;

  OnboardingModel({
    this.imagePath,
    this.header,
    this.title,
  });
}

class Onboarding {
  List<OnboardingModel> listAllOnboarding = [
    OnboardingModel(
      imagePath: "assets/images/IMAGETILES.png",
      header: "Read the article you \nwant instantly",
      title:
          "You can read thousands of articles on Blog Club, save them in the application and share them with your loved ones.",
    ),
    OnboardingModel(
      imagePath: "assets/images/IMAGETILES.png",
      header: "Get started",
      title: "Join our community",
    ),
    OnboardingModel(
      imagePath: "assets/images/IMAGETILES.png",
      header: "Read the article you \nwant instantly",
      title:
          "You can read thousands of articles on Blog Club, save them in the application and share them with your loved ones.",
    ),
  ];
}
