import 'package:astro_interview/models/food_detail.dart';
import 'package:astro_interview/presentation/custom_widgets/ingredient_card.dart';
import 'package:astro_interview/presentation/custom_widgets/ingredient_servings.dart';
import 'package:flutter/material.dart';

class FoodDetailIngredientListView extends StatelessWidget {
  const FoodDetailIngredientListView({Key? key, required this.detailList})
      : super(key: key);
  final List<Details>? detailList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 30),
      shrinkWrap: true,
      itemCount: detailList!.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const IngredientServings(),
            IngredientCard(
              title: detailList![index].strIngredient1.toString(),
              subtitle: detailList![index].strMeasure1.toString(),
            ),
            IngredientCard(
              title: detailList![index].strIngredient2.toString(),
              subtitle: detailList![index].strMeasure2.toString(),
            ),
            IngredientCard(
              title: detailList![index].strIngredient3.toString(),
              subtitle: detailList![index].strMeasure3.toString(),
            ),
            IngredientCard(
              title: detailList![index].strIngredient4.toString(),
              subtitle: detailList![index].strMeasure4.toString(),
            ),
            IngredientCard(
              title: detailList![index].strIngredient5.toString(),
              subtitle: detailList![index].strMeasure5.toString(),
            ),
            IngredientCard(
              title: detailList![index].strIngredient6.toString(),
              subtitle: detailList![index].strMeasure6.toString(),
            ),
            IngredientCard(
              title: detailList![index].strIngredient7.toString(),
              subtitle: detailList![index].strMeasure7.toString(),
            ),
            IngredientCard(
              title: detailList![index].strIngredient8.toString(),
              subtitle: detailList![index].strMeasure8.toString(),
            ),
          ],
        );
      },
    );
  }
}
