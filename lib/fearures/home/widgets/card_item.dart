import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/shared/custom_text.dart';
import 'package:gap/gap.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.image,
    required this.text,
    required this.desc,
    required this.rate,
  });
  final String image, text, desc, rate;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, width: 170),
            Gap(10),
            CustomText(
              text: text,
              fontWeight: FontWeight.bold,

              size: 20,
              Weight: FontWeight.normal,
            ),
            CustomText(text: desc, size: 20, Weight: FontWeight.normal),
            CustomText(text: "$rate ", size: 20, Weight: FontWeight.normal),
          ],
        ),
      ),
    );
  }
}
