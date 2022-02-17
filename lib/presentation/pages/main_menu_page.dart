import 'package:astro_interview/presentation/custom_widgets/menu_card.dart';
import 'package:astro_interview/presentation/custom_widgets/search.dart';
import 'package:astro_interview/values/strings.dart';
import 'package:flutter/material.dart';

import 'beverage_home/beverage_home_page.dart';
import 'food_home/food_home_page.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 110, 50, 0),
            width: 100,
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Search(),
                const SizedBox(height: 30),
                MenuCard(
                  title: 'Food',
                  subtitle: '120 Items',
                  photoUrl: Constant.foodMenu,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoodHomePage()),
                    );
                  },
                ),
                MenuCard(
                  title: 'Beverages',
                  subtitle: '220 Items',
                  photoUrl: Constant.beverageMenu,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BeverageHomePage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
