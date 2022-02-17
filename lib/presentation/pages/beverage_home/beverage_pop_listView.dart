import 'package:astro_interview/models/beverage_popular.dart';
import 'package:astro_interview/presentation/custom_widgets/favPhoto.dart';
import 'package:flutter/material.dart';

import 'beverage_detail_page.dart';

class PopularBeverageListView extends StatelessWidget {
  const PopularBeverageListView({Key? key, this.drinks}) : super(key: key);
  final List<Drinks>? drinks;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: ListView.builder(
        itemCount: drinks!.length,
        itemBuilder: (context, index) {
          return FavPhoto(
            photoUrl: drinks![index].strDrinkThumb.toString(),
            title: drinks![index].strDrink.toString(),
            id: drinks![index].idDrink.toString(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BeverageDetailPage(
                    photoUrl: drinks![index].strDrinkThumb.toString(),
                    title: drinks![index].strDrink.toString(),
                    id: drinks![index].idDrink.toString(),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
