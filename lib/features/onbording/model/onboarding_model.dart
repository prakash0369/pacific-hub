import 'package:pacific_hunt/core/constant/app_assets.dart';

class OnBoardingModel {
  String image;
  String title;
  String description;

  OnBoardingModel(
      {required this.image, required this.title, required this.description});
}

List<OnBoardingModel> pages = [
  OnBoardingModel(
      image: AppAssets.businessImg,
      title: "Discover Opportunities",
      description:
          "Browse thousands of job listings across various industries. Whether you're seeking a new challenge or advancing your career, we've got you covered."),
  OnBoardingModel(
      image: AppAssets.applyImg,
      title: "Apply with Ease",
      description:
          "Applying for jobs has never been simpler. With just a few clicks, submit your application directly to employers and track your progress effortlessly."),
  OnBoardingModel(
      image: AppAssets.getStartedImg,
      title: "Let's Get Started",
      description:
          "Create your account now and start exploring endless possibilities. Your dream job awaits!"),
];
