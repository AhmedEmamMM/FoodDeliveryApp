import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/Components/space.dart';
import 'package:food_delivery_app_with_backend/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25, bottom: 25, top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Thank you for your order!"),
            const VirtecalSpace(height: 25),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(25),
                child: Consumer<Restaurant>(
                  builder: (context, restaurant, child) =>
                      Text(restaurant.displayCartReceipt()),
                ),
                ),
            const VirtecalSpace(height: 25),
            const Text("Estimated delivery time is : 4:10 PM"),
          ],
        ),
      ),
    );
  }
}
