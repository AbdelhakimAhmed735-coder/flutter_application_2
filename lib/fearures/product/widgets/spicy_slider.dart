import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';
import 'package:flutter_application_2/shared/custom_text.dart';
import 'package:gap/gap.dart';

class SpicySlider extends StatelessWidget {
  const SpicySlider({super.key, required this.value, required this.onChanged});

  final double value;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/detail/sadwich.png", height: 250),
        const Spacer(),
        Column(
          children: [
            const CustomText(
              text:
                  "Customize Your Burger\nto Your Tastes. Ultimate\n Experience",
              size: 15,
              Weight: FontWeight.normal,
            ),

            Slider(
              min: 0,
              max: 10,
              value: value,
              onChanged: onChanged,
              activeColor: AppColors.primary,
              inactiveColor: Colors.grey,
            ),

            const Row(
              children: [
                CustomText(text: "❄", size: 23, Weight: FontWeight.normal),
                Gap(120),
                CustomText(text: "🔥", size: 25, Weight: FontWeight.normal),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
