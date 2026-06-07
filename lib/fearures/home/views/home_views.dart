import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';
import 'package:flutter_application_2/fearures/home/widgets/card_item.dart';
import 'package:flutter_application_2/fearures/home/widgets/food_category.dart';
import 'package:flutter_application_2/fearures/home/widgets/search_item.dart';
import 'package:flutter_application_2/fearures/home/widgets/user_header.dart';
import 'package:flutter_application_2/shared/custom_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  List category = ["All", "Combo", "Sliders", "Classic"];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            /// HEADER
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const Gap(75),
                    UserHeader(),
                    const Gap(26),
                    SearchItem(),
                    const Gap(20),
                    FoodCategory(
                      selectedIndex: selectedindex,
                      category: category,
                    ),
                    const Gap(20),
                  ],
                ),
              ),
            ),

            /// GRID
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.63,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  return const CardItem(
                    image: "assets/test/test.png",
                    text: "Cheeseburger",
                    desc: "Wendy's Burger",
                    rate: "4.9",
                  );
                }, childCount: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
