import 'package:astro_interview/presentation/custom_widgets/location.dart';
import 'package:astro_interview/presentation/custom_widgets/search.dart';
import 'package:flutter/material.dart';

import 'beverage_category.dart';
import 'beverage_pop.dart';

class BeverageHomePage extends StatefulWidget {
  const BeverageHomePage({Key? key}) : super(key: key);

  @override
  State<BeverageHomePage> createState() => _BeverageHomePageState();
}

class _BeverageHomePageState extends State<BeverageHomePage> {
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
            BeverageCategories(),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Popular Beverages',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              ),
            ),
            PopularBeverages(),

            // const TestExample(),
          ],
        ),
      ),
    );
  }
}
