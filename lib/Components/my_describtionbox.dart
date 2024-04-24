import 'package:flutter/material.dart';

class MyDescribtionBox extends StatelessWidget {
  const MyDescribtionBox({super.key});

  @override
  Widget build(BuildContext context) {
    //textStyle
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(bottom: 25, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //delivery fee
          Column(
            children: [
              Text(
                "\$ 9.99",
                style: myPrimaryTextStyle,
              ),
              Text(
                "Delivery Free",
                style: mySecondaryTextStyle,
              ),
            ],
          ),

          //delivery time
          Column(
            children: [
              Text(
                "15-30 min",
                style: myPrimaryTextStyle,
              ),
              Text(
                "Delivery Time",
                style: mySecondaryTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
