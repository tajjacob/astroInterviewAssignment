import 'dart:convert';

import 'package:astro_interview/models/food_popular.dart';
import 'package:astro_interview/presentation/custom_widgets/loading_list_fav.dart';
import 'package:astro_interview/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'food_pop_listView.dart';

class PopularFoods extends StatefulWidget {
  const PopularFoods({Key? key}) : super(key: key);

  @override
  _PopularFoodsState createState() => _PopularFoodsState();
}

class _PopularFoodsState extends State<PopularFoods> {
  late String pick;
  PopFood? popFood;
  List<Foods>? mealsList;

  Future<List<Foods>?> getFoodCategoriesList() async {
    final response = await http.get(Uri.parse(Constant.filterBeefMeal));
    if (response.statusCode == 200) {
      popFood = PopFood.fromJson(jsonDecode(response.body));
      setState(() {
        mealsList = popFood!.meals;
      });
      return mealsList;
    } else {
      mealsList = null;
    }
  }

  @override
  void initState() {
    getFoodCategoriesList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final selectFood =
    //     Provider.of<FoodCategoryProvider>(context, listen: false);
    return SizedBox(
      width: double.infinity,
      height: 500,
      child: FutureBuilder<List<Foods>?>(
        future: getFoodCategoriesList(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('An error has occurred! ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            return PopularFoodListView(mealsList: mealsList);
          }
          // else if (!snapshot.hasData) {
          //   return const Text('test');
          // }
          else {
            return const LoadingListPop();
          }
        },
      ),
    );
  }
}
