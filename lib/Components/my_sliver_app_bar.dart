import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/Pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  final int cartItemCount;
  final Widget child;
  final Widget title;
  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title,
    required this.cartItemCount,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {
                // go to cart page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CartPage()));
              },
              icon: const Icon(Icons.shopping_cart),
            ),
            cartItemCount == 0
                ? const Text("")
                : Positioned(
                    right: 0,
                    top: -6,
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        cartItemCount.toString(),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ),
                  )
          ],
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(
        "Sunset Dinner",
        style: TextStyle(
          fontSize: 25,
          foreground: Paint()
            ..shader = const LinearGradient(
              colors: [
                Colors.red,
                Colors.blue,
              ],
            ).createShader(
              const Rect.fromLTWH(100.0, 200.0, 200.0, 200.0),
            ),
        ),
      ),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
