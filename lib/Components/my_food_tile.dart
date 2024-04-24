import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/Components/space.dart';
import 'package:food_delivery_app_with_backend/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // text food detalits
                Expanded(
                    child: Column(
                  children: [
                    Text(food.name),
                    Text(
                      "\$ ${food.price}",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    const VirtecalSpace(height: 10),
                    Text(
                      food.discribtion,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    )
                  ],
                )),

                const HorizontalSpace(width: 15),
                //food img
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    food.imagePath,
                    height: 120,
                    width: 140,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
        ),

        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
