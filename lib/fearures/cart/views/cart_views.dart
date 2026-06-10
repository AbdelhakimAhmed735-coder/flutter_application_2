import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';
import 'package:flutter_application_2/fearures/cart/widgets/cart_item.dart';

class CartViews extends StatefulWidget {
  const CartViews({super.key});

  @override
  State<CartViews> createState() => _CartViewsState();
}

class _CartViewsState extends State<CartViews> {
  List<int> quantities = List.generate(8, (_) => 1);

  void onAdd(int index) {
    setState(() {
      quantities[index]++;
    });
  }

  void onMinus(int index) {
    setState(() {
      if (quantities[index] > 1) {
        quantities[index]--;
      }
    });
  }

  void onRemove(int index) {
    setState(() {
      quantities.removeAt(index);
    });
  }

  double get total {
    const double price = 4.95;
    return quantities.fold(0.0, (sum, quantity) => sum + quantity * price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, toolbarHeight: 0),

      body: quantities.isEmpty
          ? const Center(
              child: Text(
                "Cart is Empty",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.only(
                top: 17,
                left: 12,
                right: 12,
                bottom: 120,
              ),
              itemCount: quantities.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: CartItems(
                    image: "assets/cart/hamburger.png",
                    text: "Burger",
                    number: quantities[index],
                    onadd: () => onAdd(index),
                    onminus: () => onMinus(index),
                    onremove: () => onRemove(index),
                  ),
                );
              },
            ),

      bottomSheet: quantities.isEmpty
          ? null
          : Container(
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Total",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text(
                        "\$${total.toStringAsFixed(2)}",
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 180,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        "Checkout",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
