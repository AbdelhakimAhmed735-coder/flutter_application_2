import 'package:flutter/material.dart';
import 'package:flutter_application_2/shared/custom_text.dart';

class Cutomauthbtn extends StatelessWidget {
  const Cutomauthbtn({super.key, this.onTap, required this.text});
  final Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        width: double.infinity,
        height: 50,
        child: Center(
          child: CustomText(
            text: text,
            size: 25,
            color: Colors.black,
            Weight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
