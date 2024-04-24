import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/models/cart_item.dart';
import 'package:food_delivery_app_with_backend/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Cheease Burger",
      discribtion:
          "A classic burger topped with cheese , typically American cheddar or swiss",
      imagePath: "lib/images/burgers/burger1.jpeg",
      price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Bacon Burger",
      discribtion:
          "A burger topped with bacon strips ,often with additional toppings like cheese and barbecue sauce",
      imagePath: "lib/images/burgers/burger2.jpeg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Chicken Burger",
      discribtion: "A burger made with a chicken patty ,often grilled or fired",
      imagePath: "lib/images/burgers/burger3.jpeg",
      price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "turkey Burger",
      discribtion:
          "A burger made with ground rurkey patty , with os pften leaner than beef",
      imagePath: "lib/images/burgers/burger4.jpeg",
      price: 15.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Easy Burger",
      discribtion:
          "A burger served with breakfast ingredients like eggs, bacon and sausage",
      imagePath: "lib/images/burgers/burger5.jpg",
      price: 2.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),

    //desserts
    Food(
      name: "Cakes",
      discribtion:
          "Perhaps the most popular dessert of all time,It’s topped with sweet and creamy icing for the ultimate treat.",
      imagePath: "lib/images/desserts/desserts1.jpeg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Biscuits",
      discribtion:
          "they can vary in texture from soft and chewy to hard and crispy.",
      imagePath: "lib/images/desserts/desserts2.jpg",
      price: 9.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Pastries",
      discribtion:
          "the flavor profile of the treat. Apple pie is the quintessential American pastry.",
      imagePath: "lib/images/desserts/desserts3.jpeg",
      price: 14.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Candies",
      discribtion:
          "Confections, also called candy or sweets, feature sugar or honey as a principal ingredient",
      imagePath: "lib/images/desserts/Candies-min-300x200.jpg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "CustardsPuddings",
      discribtion:
          "Made with a base of cream and milk, puddings and custards are remarkably similar",
      imagePath: "lib/images/desserts/Pudding-min-300x200.jpg",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),

    //drikes
    Food(
      name: "Tea",
      discribtion:
          "Tea is a drink that has been around for thousands of years. Tea leaves contain many antioxidants",
      imagePath: "lib/images/drinks/drinks1.jpg",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Coffee",
      discribtion:
          "coffee is a source of antioxidants that may help protect cells from damage",
      imagePath: "lib/images/drinks/drinks2.jpeg",
      price: 7.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Soft Drinks",
      discribtion:
          "Carbonated soft drinks like Coca-Cola and Pepsi are ubiquitous, and cherished for their effervescent sweetness",
      imagePath: "lib/images/drinks/drinks1.jpg",
      price: 20.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Beer",
      discribtion:
          "Beer is a diverse beverage with a rich history. From light, crisp lagers to robust",
      imagePath: "lib/images/drinks/drinks1.jpg",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Wine",
      discribtion:
          "Wine, whether red, white, or sparkling, is cherished for its elegance and complexity",
      imagePath: "lib/images/drinks/drinks1.jpg",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),

    //salads
    Food(
      name: "Tossed Salad",
      discribtion:
          "This is probably what you think of when you think saladTossed salads are made by tossing ingredients (and usually dressing) in a haphazard way",
      imagePath: "lib/images/salads/salads.jpeg",
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Fattoush",
      discribtion:
          "Fattoush is a Levantine salad composed of mixed greens and toasted or fried khubz, or flatbread",
      imagePath: "lib/images/salads/salads.jpeg",
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Greek Salad",
      discribtion:
          "A Greek salad consists of tomatoes, cucumbers, olives, feta, and onions",
      imagePath: "lib/images/salads/salads.jpeg",
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Leafy Green Salad",
      discribtion:
          "Green salad is a general term that can refer to any tossed salad made with greens",
      imagePath: "lib/images/salads/salads.jpeg",
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Caesar Salad",
      discribtion:
          "Romaine lettuce, croutons, and Parmesan tossed with a dressing featuring lemon juice",
      imagePath: "lib/images/salads/salads.jpeg",
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),

    //sides
    Food(
      name: "Mashed potatoes",
      discribtion:
          "stant Pot Mashed Potatoes. These taters are buttery and creamy ",
      imagePath: "lib/images/salads/salads.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Green beans",
      discribtion: "Green Beans Almondine. Sautéed with shallots and garlic",
      imagePath: "lib/images/salads/salads1.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Potato salad",
      discribtion:
          " The potato salad is a classic, Matt Preston adds mint to this",
      imagePath: "lib/images/salads/salads2.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Caesar Salad",
      discribtion:
          "Romaine lettuce, croutons, and Parmesan tossed with a dressing featuring lemon juice",
      imagePath: "lib/images/salads/salads3.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
    Food(
      name: "Baked potatoes",
      discribtion:
          " This twist on serving twice-baked potatoes uses sliced potato rounds with plenty",
      imagePath: "lib/images/salads/salads5.jpeg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "coal", price: 0.99),
        Addon(name: "rize", price: 0.49),
      ],
    ),
  ];

  //user cart
  final List<CartItem> _cart = [];

  // delivery address (which user can maually change/update)
  String _deliveryAddress = "Egypt/Cairo/Mokkatem";


  /*

    G E T T E R S

  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*

    O P E R A T I O N S

  */

  // add to the cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item alreadyt with the same food and seletect addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //cheak is the food items are the same
      bool isSameFood = item.food == food;

      //cheak is the List of Selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item alreafy exists , increase the quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise , add a new cart item to the cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // remove from a cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // total price of the cart
  double getTotalePrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cat
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress){
    _deliveryAddress = newAddress;
    notifyListeners();

  }
  

  /*

    H E L P E R S

  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalePrice())}");
    receipt.writeln();
    receipt.writeln("Delivery to: $deliveryAddress");


    return receipt.toString();
  }

  //format aouble calue into money
  String _formatPrice(double price) {
    return "\$ ${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
