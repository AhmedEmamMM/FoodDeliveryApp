import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/Components/my_recipt.dart';
import 'package:food_delivery_app_with_backend/Components/space.dart';

class DeliveryProgresPage extends StatelessWidget {
  const DeliveryProgresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Delivery in progress.."),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _builtBottomNavBar(context),
      body: const Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }

  // custin bottom nav Bar - massage / call delivery driver
  Widget _builtBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          // profile picture
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                shape: BoxShape.circle),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                )),
          ),

          const HorizontalSpace(width: 10),

          // driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ahmed Emam",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Driver",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
          const Spacer(),

          Row(
            children: [
              // massafe button
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message,
                      color: Colors.blue,
                    )),
              ),
              const HorizontalSpace(width: 10),

              // call button
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.call,
                      color: Colors.green,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
