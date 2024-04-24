import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/Components/custum_button.dart';
import 'package:food_delivery_app_with_backend/Components/space.dart';
import 'package:food_delivery_app_with_backend/models/food.dart';
import 'package:food_delivery_app_with_backend/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  }) {
    //initializa Selected Addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // method to add to cat
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {

    // close the current food page to go back to menu
    Navigator.pop(context);

    // format the seltected addons
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    // add to cart 
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // scaffold UI
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      widget.food.imagePath,
                      fit: BoxFit.fill,
                    )),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //food name
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      // food price
                      Text(
                        "\$ ${widget.food.price}",
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary),
                      ),

                      const VirtecalSpace(height: 20),

                      //food discribtion
                      Text(widget.food.discribtion),

                      const VirtecalSpace(height: 20),

                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),

                      Text(
                        "Add-Ons",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const VirtecalSpace(height: 20),

                      //addons
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    Theme.of(context).colorScheme.secondary)),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            Addon addon = widget.food.availableAddons[index];
                            return CheckboxListTile(
                                title: Text(addon.name),
                                subtitle: Text(
                                  "\$ ${addon.price}",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                ),
                                value: widget.selectedAddons[addon],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAddons[addon] = value!;
                                  });
                                });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const VirtecalSpace(height: 20),

                //button -> add to cart
                MyButton(
                  text: "Add to Cart",
                  onPressed: () =>
                      addToCart(widget.food, widget.selectedAddons),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const VirtecalSpace(height: 20),
              ],
            ),
          ),
        ),

        // back button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 15, top: 10),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new_rounded)),
            ),
          ),
        )
      ],
    );
  }
}
