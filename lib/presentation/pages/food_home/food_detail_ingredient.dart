import 'dart:convert';

import 'package:astro_interview/models/food_detail.dart';
import 'package:astro_interview/presentation/custom_widgets/loading_list_ingredient.dart';
import 'package:astro_interview/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'food_detail_ingredient_listView.dart';

class FoodDetailIngredient extends StatefulWidget {
  const FoodDetailIngredient({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  _FoodDetailIngredientState createState() => _FoodDetailIngredientState();
}

class _FoodDetailIngredientState extends State<FoodDetailIngredient> {
  FoodDetail? foodDetail;
  List<Details>? detailList;

  Future<List<Details>?> getFoodCategoriesList() async {
    final response =
        await http.get(Uri.parse('${Constant.foodDetails}${widget.id}'));
    if (response.statusCode == 200) {
      foodDetail = FoodDetail.fromJson(jsonDecode(response.body));
      setState(() {
        detailList = foodDetail!.meals;
      });
      return detailList;
    } else {
      detailList = null;
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
      width: double.infinity,
      height: 500,
      child: FutureBuilder<List<Details>?>(
        future: getFoodCategoriesList(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('An error has occurred! ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            return FoodDetailIngredientListView(detailList: detailList);
          } else {
            return const LoadingListIngredient();
          }
        },
      ),
    );
  }
}
