import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:food_delivery_app_with_backend/Components/my_current_location.dart';
import 'package:food_delivery_app_with_backend/Components/my_describtionbox.dart';
import 'package:food_delivery_app_with_backend/Components/my_drawer.dart';
import 'package:food_delivery_app_with_backend/Components/my_food_tile.dart';
import 'package:food_delivery_app_with_backend/Components/my_sliver_app_bar.dart';
import 'package:food_delivery_app_with_backend/Components/my_tab_bar.dart';
import 'package:food_delivery_app_with_backend/Pages/food_page.dart';
import 'package:food_delivery_app_with_backend/models/food.dart';
import 'package:food_delivery_app_with_backend/models/restaurant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // taPbar Conttroller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  //sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in givin category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      // get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            // get individal food
            final food = categoryMenu[index];

            //return food tile UI
            return FoodTile(
                food: food,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodPage(food: food)))).animate().fadeIn(duration: 1500.ms, delay: 600.ms).shake().scaleXY();
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        drawer: const MyDrawer(),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScroller) => [
                  MySliverAppBar(
                    cartItemCount:
                        Provider.of<Restaurant>(context).getTotalItemCount(),
                    title: MyTabBar(tabController: _tabController),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Divider(
                          indent: 25,
                          endIndent: 25,
                          color: Theme.of(context).colorScheme.secondary,
                        ),

                        // my current Location
                        const MyCurrentLocation(),

                        //describtion box
                        const MyDescribtionBox(),
                      ],
                    ),
                  ),
                ],
            body: Consumer<Restaurant>(
              builder: (context, restaurant, child) => TabBarView(
                  controller: _tabController,
                  children: getFoodInThisCategory(restaurant.menu)),
            )));
  }
}
