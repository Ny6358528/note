import 'package:flutter/material.dart';
import 'package:note_app/core/resources/app_images.dart';

class ImageOnBoardingScreen extends StatelessWidget {
  const ImageOnBoardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      APPImages.onboardingImage,
     
    );
  }
}