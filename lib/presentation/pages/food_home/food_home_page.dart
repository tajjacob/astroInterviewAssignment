import 'package:astro_interview/presentation/custom_widgets/location.dart';
import 'package:astro_interview/presentation/custom_widgets/search.dart';
import 'package:flutter/material.dart';

import 'food_category.dart';
import 'food_pop.dart';

class FoodHomePage extends StatefulWidget {
  const FoodHomePage({Key? key}) : super(key: key);

  @override
  State<FoodHomePage> createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Good Morning Akila!'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const [
            LocationWidget(),
            Search(),
            FoodCategoryList(),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Popular Food',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              ),
            ),
            PopularFoods(),

            // const TestExample(),
          ],
        ),
      ),
    );
  }
}
