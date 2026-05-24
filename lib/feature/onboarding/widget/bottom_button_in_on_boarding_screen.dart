import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/core/color/app_color.dart';
import 'package:note_app/core/routing/app_nameing_router.dart';

class BottomButtonInOnBoardingScreen extends StatelessWidget {
  const BottomButtonInOnBoardingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:75,
      height: 75,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          shape: const CircleBorder(),
        ),
        onPressed: () {
          /// Navigate to home
          context.go(AppNamingRouter.homeScreen);
        },
        child: Icon(Icons.arrow_forward_ios, color: Colors.white),
      ),
    );
  }
}