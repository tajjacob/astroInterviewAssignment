import 'dart:convert';

import 'package:astro_interview/models/beverage_popular.dart';
import 'package:astro_interview/presentation/custom_widgets/loading_list_fav.dart';
import 'package:astro_interview/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'beverage_pop_listView.dart';

class PopularBeverages extends StatefulWidget {
  const PopularBeverages({Key? key}) : super(key: key);

  @override
  _PopularBeveragesState createState() => _PopularBeveragesState();
}

class _PopularBeveragesState extends State<PopularBeverages> {
  //Popular = popBeverage , foods = drinks
  PopBeverage? popBeverage;
  List<Drinks>? drinks;

  Future<List<Drinks>?> getFoodCategoriesList() async {
    final response = await http.get(Uri.parse(Constant.beverageFilter));
    if (response.statusCode == 200) {
      popBeverage = PopBeverage.fromJson(jsonDecode(response.body));
      setState(() {
        drinks = popBeverage!.drinks;
      });
      return drinks;
    } else {
      drinks = null;
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
      child: FutureBuilder<List<Drinks>?>(
        future: getFoodCategoriesList(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('An error has occurred! ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            return PopularBeverageListView(drinks: drinks);
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
