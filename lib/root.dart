import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';
import 'package:flutter_application_2/fearures/auth/view/profile_views.dart';
import 'package:flutter_application_2/fearures/cart/views/cart_views.dart';
import 'package:flutter_application_2/fearures/home/views/home_views.dart';
import 'package:flutter_application_2/fearures/orderHistory/views/order_history_views.dart';
import 'package:flutter_application_2/fearures/product/views/product_views.dart';
import 'package:flutter/cupertino.dart';

class Root extends StatefulWidget {
  Root({super.key});
  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late PageController controller;
  late List<Widget> screens;
  int currentScreen = 0;
  @override
  void initState() {
    screens = [
      HomeViews(),
      CartViews(),
      OrderHistoryViews(),
      ProductViews(),
      ProfileViews(),
    ];
    controller = PageController(initialPage: currentScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: controller, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "home",
          ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
        ],
      ),
    );
  }
}
