import 'dart:convert';

import 'package:astro_interview/models/beverage_detail.dart';
import 'package:astro_interview/presentation/custom_widgets/loading_list_ingredient.dart';
import 'package:astro_interview/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'beverage_detail_ingredient_listView.dart';

class BeverageDetailIngredient extends StatefulWidget {
  const BeverageDetailIngredient({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  _BeverageDetailIngredientState createState() =>
      _BeverageDetailIngredientState();
}

class _BeverageDetailIngredientState extends State<BeverageDetailIngredient> {
  BeverageDetail? beverageDetail;
  List<Details>? detailList;

  Future<List<Details>?> getFoodCategoriesList() async {
    final response =
        await http.get(Uri.parse('${Constant.beverageDetails}${widget.id}'));
    if (response.statusCode == 200) {
      beverageDetail = BeverageDetail.fromJson(jsonDecode(response.body));
      setState(() {
        detailList = beverageDetail!.drinks;
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
            return BeverageDetailIngredientListView(detailList: detailList);
          } else {
            return const LoadingListIngredient();
          }
        },
      ),
    );
  }
}
