import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';
import 'package:flutter_application_2/shared/custom_text.dart';

class CustomBattom extends StatelessWidget {
  const CustomBattom({super.key, required this.text, this.onTap});

  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 145,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            text: text,
            size: 25,
            color: Colors.white,
            Weight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
