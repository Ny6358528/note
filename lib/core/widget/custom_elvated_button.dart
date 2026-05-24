import 'package:flutter/material.dart';
import 'package:note_app/core/color/app_color.dart';

class CustomElvatedButton extends StatelessWidget {
  const CustomElvatedButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 75,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 10, 
          shadowColor: Colors.black.withOpacity(0.4),
          backgroundColor: AppColor.primaryColor,
          shape: const CircleBorder(),
        ),
        onPressed: onPressed,
        child: Icon(
          icon,
          color: Colors.white,size: 30,
        ),
      ),
    );
  }
}