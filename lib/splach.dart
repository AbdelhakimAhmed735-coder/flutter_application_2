import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SplachView extends StatelessWidget {
  const SplachView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          children: [
            Gap(280),
            SvgPicture.asset("assets/logo/logo.svg"),
            Spacer(),
            Image.asset("assets/splach/splach.png"),
          ],
        ),
      ),
    );
  }
}
