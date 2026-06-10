import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';
import 'package:flutter_application_2/shared/custom_text.dart';
import 'package:gap/gap.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    required this.image,
    required this.text,
    this.onminus,
    this.onadd,
    this.onremove,
    required this.number,
  });
  final String image;
  final String text;
  final int number;
  final Function()? onminus;
  final Function()? onadd;
  final Function()? onremove;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            Card(
              color: const Color.fromARGB(255, 253, 252, 252),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Image.asset(image),
                        CustomText(
                          text: text,
                          size: 15,
                          Weight: FontWeight.bold,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 9,
                            vertical: 20,
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: onadd,
                                child: CircleAvatar(
                                  backgroundColor: AppColors.primary,
                                  child: Icon(
                                    CupertinoIcons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Gap(30),
                              CustomText(
                                text: number.toString(),
                                size: 15,
                                Weight: FontWeight.bold,
                              ),
                              Gap(30),
                              GestureDetector(
                                onTap: onminus,
                                child: CircleAvatar(
                                  backgroundColor: AppColors.primary,
                                  child: Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: onremove,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            width: 120,
                            height: 40,

                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              child: Center(
                                child: CustomText(
                                  text: "Remove",
                                  size: 20,
                                  Weight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
