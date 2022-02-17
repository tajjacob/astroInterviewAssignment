import 'package:astro_interview/bloc_food/food_cat_cubit.dart';
import 'package:astro_interview/models/food_categories.dart';
import 'package:astro_interview/presentation/custom_widgets/square_photo.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class FoodCategoryListView extends StatelessWidget {
  const FoodCategoryListView({Key? key, this.categoryList}) : super(key: key);
  final List<Categories>? categoryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList!.length,
        itemBuilder: (context, index) {
          return SquarePhoto(
            photoUrl: categoryList![index].strCategoryThumb.toString(),
            radius: 100,
            title: categoryList![index].strCategory.toString(),
            onTap: () {
              context.read<FoodCategoryCubit>().chooseCategory();
              print(categoryList![index].strCategory.toString());
            },
          );
        },
      ),
    );
  }
}
