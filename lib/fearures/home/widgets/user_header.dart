import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/shared/custom_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset("assets/logo/Hungry_2.svg"),
            const Gap(5),
            CustomText(
              text: "Hello, Ahmed elsaid ZEZO",
              size: 18,
              Weight: FontWeight.w500,
              color: Colors.grey.shade500,
            ),
          ],
        ),
        const Spacer(),
        const CircleAvatar(radius: 31),
      ],
    );
  }
}
