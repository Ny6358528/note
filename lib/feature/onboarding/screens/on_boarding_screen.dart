import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/core/resources/app_text_string.dart';
import 'package:note_app/core/routing/app_nameing_router.dart';
import 'package:note_app/core/theme/app_text_style.dart';
import 'package:note_app/core/widget/custom_elvated_button.dart';
import 'package:note_app/feature/onboarding/widget/image_onboarding_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Image
            ImageOnBoardingScreen(),

             SizedBox(height: 40.h),

            /// Title
            const Text(
              AppTextString.onboardingTitle1,
              textAlign: TextAlign.center,
              style: AppTextStyle.textStyleBold48,
            ),

             SizedBox(height: 20.h),

            /// Description
            const Text(
              AppTextString.onboardingDec,
              textAlign: TextAlign.center,
              style: AppTextStyle.textStyle16Grey,
            ),

             SizedBox(height: 50.h),

            /// Button
           CustomElvatedButton(
              onPressed: () {
                /// Navigate to home
                context.go(AppNamingRouter.homeScreen);
              },
              icon: Icons.arrow_forward_ios,
            ),
            
          ],
        ),
      ),
    );
  }
}
