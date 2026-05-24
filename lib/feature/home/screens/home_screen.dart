import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/color/app_color.dart';
import 'package:note_app/core/resources/app_images.dart';
import 'package:note_app/core/resources/app_text_string.dart';
import 'package:note_app/core/theme/app_text_style.dart';
import 'package:note_app/core/widget/custom_elvated_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Text(AppTextString.homeNotesAppBar,style: TextStyle(
          color: AppColor.primaryColor,
          fontSize: 30,
          fontFamily: 'Otama-ep',
        ),),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
         Center(
           child: Image.asset(
          APPImages.onboardingImage,
         
        ),
          
         ),
         
         Text(AppTextString.homeDec,style: AppTextStyle.textStyle20Black),
         SizedBox(height: 200.h,), 
         Row(
          mainAxisAlignment: MainAxisAlignment.end,
          
           children: [
             CustomElvatedButton(onPressed: (){}, icon: Icons.add),
           ],
         )
        
          ],
        ),
      )
    );
  }
}