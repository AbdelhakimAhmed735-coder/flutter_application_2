import 'package:flutter/material.dart';
import 'package:flutter_application_2/fearures/product/widgets/Side_options.dart';
import 'package:flutter_application_2/fearures/product/widgets/spicy_slider.dart';
import 'package:flutter_application_2/fearures/product/widgets/toppings.dart';
import 'package:flutter_application_2/shared/custom_battom.dart';
import 'package:flutter_application_2/shared/custom_text.dart';
import 'package:gap/gap.dart';

class ProductDetailesViews extends StatefulWidget {
  const ProductDetailesViews({super.key});

  @override
  State<ProductDetailesViews> createState() => _ProductDetailesViewsState();
}

class _ProductDetailesViewsState extends State<ProductDetailesViews> {
  double value = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Center(child: Text("Burger")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpicySlider(
                value: value,
                onChanged: (v) => setState(() => value = v),
              ),
              Gap(50),
              CustomText(text: "Toppings", size: 25, Weight: FontWeight.bold),
              Gap(30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Toppings(
                      image: "assets/toppings/tomato.png",
                      text: "Tomato",
                    ),
                    Gap(15),
                    Toppings(image: "assets/toppings/beef.png", text: "Beef"),
                    Gap(15),
                    Toppings(
                      image: "assets/toppings/Pickles.png",
                      text: "Pickles",
                    ),
                    Gap(15),
                    Toppings(image: "assets/toppings/unuon.png", text: "unuon"),
                    Gap(15),
                  ],
                ),
              ),
              Gap(20),
              CustomText(
                text: "SideOptions",
                size: 25,
                Weight: FontWeight.bold,
              ),
              Gap(20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SideOptions(
                      image: "assets/Sideoptions/Fries.png",
                      text: "Fries",
                    ),
                    Gap(15),
                    SideOptions(
                      image: "assets/Sideoptions/Coleslaw.png",
                      text: "Coleslaw",
                    ),
                    Gap(15),
                    SideOptions(
                      image: "assets/Sideoptions/Onion.png",
                      text: "Onion",
                    ),
                    Gap(15),
                    SideOptions(
                      image: "assets/Sideoptions/Salad.png",
                      text: "Salad",
                    ),
                    Gap(15),
                  ],
                ),
              ),
              Gap(10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CustomText(
                          text: "Total",
                          size: 30,
                          Weight: FontWeight.w900,
                        ),
                        CustomText(
                          text: "\$ 19.8",
                          size: 25,
                          Weight: FontWeight.bold,
                        ),
                      ],
                    ),
                    Spacer(),
                    CustomBattom(text: 'Add to cart', onTap: () {}),
                  ],
                ),
              ),
              Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
