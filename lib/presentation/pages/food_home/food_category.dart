import 'dart:convert';

import 'package:astro_interview/models/food_categories.dart';
import 'package:astro_interview/presentation/custom_widgets/loading_list_cat.dart';
import 'package:astro_interview/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'food_category_listView.dart';

class FoodCategoryList extends StatefulWidget {
  const FoodCategoryList({Key? key}) : super(key: key);

  @override
  _FoodCategoryListState createState() => _FoodCategoryListState();
}

class _FoodCategoryListState extends State<FoodCategoryList> {
  Food? food;
  List<Categories>? categoriesList;

  Future<List<Categories>?> getFoodCategoriesList() async {
    final response = await http.get(Uri.parse(Constant.foodCategories));
    if (response.statusCode == 200) {
      food = Food.fromJson(jsonDecode(response.body));
      setState(() {
        categoriesList = food!.categories;
      });
      return categoriesList;
    } else {
      categoriesList = null;
    }
  }

  @override
  void initState() {
    getFoodCategoriesList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: FutureBuilder<List<Categories>?>(
        future: getFoodCategoriesList(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('An error has occurred! ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            return FoodCategoryListView(categoryList: categoriesList);
          }
          // else if (!snapshot.hasData) {
          //   return const Text('test');
          // }
          else {
            return const LoadingListCat();
          }
        },
      ),
    );
  }
}
