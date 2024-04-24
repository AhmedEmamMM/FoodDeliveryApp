import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/Components/quantity_selector.dart';
import 'package:food_delivery_app_with_backend/Components/space.dart';
import 'package:food_delivery_app_with_backend/models/cart_item.dart';
import 'package:food_delivery_app_with_backend/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // food image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100,
                      width: 140,
                    ),
                  ),
                  const HorizontalSpace(width: 10),

                  // name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(cartItem.food.name),

                      // food price
                      Text(
                        "\$ ${cartItem.food.price}",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  // incremant or decrment
                  QuantitySelector(
                      quantity: cartItem.quantity,
                      food: cartItem.food,
                      onIncreimant: () {
                        restaurant.addToCart(
                            cartItem.food, cartItem.selectedAddons);
                      },
                      onDecrement: () {
                        restaurant.removeFromCart(cartItem);
                      }),
                ],
              ),
            ),

            // addons
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                children: cartItem.selectedAddons
                    .map(
                      (addon) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: FilterChip(
                          label: Row(
                            children: [
                              // addon name
                              Text(addon.name),
                              const HorizontalSpace(width: 10),

                              // addon price
                              Text(" ( \$ ${addon.price} )"),
                            ],
                          ),
                          shape: StadiumBorder(
                              side: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          )),
                          onSelected: (value) {},
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
