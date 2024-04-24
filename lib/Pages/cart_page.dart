import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/Components/custum_button.dart';
import 'package:food_delivery_app_with_backend/Components/my_cart_tile.dart';
import 'package:food_delivery_app_with_backend/Components/space.dart';
import 'package:food_delivery_app_with_backend/Pages/check_out_page.dart';
import 'package:food_delivery_app_with_backend/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart
        final userCart = restaurant.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text(
                            "Are you sure you want to clear the cart?"),
                        actions: [
                          //cancel button
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Cancel")),

                          // yes button
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                restaurant.clearCart();
                              },
                              child: const Text("Yes"))
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.delete)),
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(
                            child: Center(
                              child: Text(
                                "Cart is empty",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()
                                    ..shader = const LinearGradient(
                                      colors: [
                                        Colors.red,
                                        Colors.blue,
                                      ],
                                    ).createShader(
                                      const Rect.fromLTWH(
                                          0.0, 0.0, 200.0, 70.0),
                                    ),
                                ),
                              ),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  //get individual cart item
                                  final cartItem = userCart[index];
                                  // return cart tile ui
                                  return MyCartTile(cartItem: cartItem);
                                }),
                          )
                  ],
                ),
              ),
              const VirtecalSpace(height: 20),

              userCart.isEmpty
                  ? const Text("")
                  : MyButton(
                      text: "Go to Cheackout",
                      horizontalPadding: 95,
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CheckOutPage(),
                          )),
                      color: Theme.of(context).colorScheme.secondary,
                      textColor: Theme.of(context).colorScheme.inversePrimary,
                    ),
              const VirtecalSpace(height: 35),
            ],
          ),
        );
      },
    );
  }
}
