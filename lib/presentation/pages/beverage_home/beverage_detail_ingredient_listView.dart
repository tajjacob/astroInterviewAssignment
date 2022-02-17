import 'package:astro_interview/models/beverage_detail.dart';
import 'package:astro_interview/presentation/custom_widgets/ingredient_card.dart';
import 'package:astro_interview/presentation/custom_widgets/ingredient_servings.dart';
import 'package:flutter/material.dart';

class BeverageDetailIngredientListView extends StatelessWidget {
  const BeverageDetailIngredientListView({Key? key, required this.detailList})
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
          ],
        );
      },
    );
  }
}
