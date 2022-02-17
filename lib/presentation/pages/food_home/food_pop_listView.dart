import 'package:astro_interview/models/food_popular.dart';
import 'package:astro_interview/presentation/custom_widgets/favPhoto.dart';
import 'package:flutter/material.dart';

import 'food_detail_page.dart';

class PopularFoodListView extends StatelessWidget {
  const PopularFoodListView({Key? key, this.mealsList}) : super(key: key);
  final List<Foods>? mealsList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: ListView.builder(
        itemCount: mealsList!.length,
        itemBuilder: (context, index) {
          return FavPhoto(
            photoUrl: mealsList![index].strMealThumb.toString(),
            title: mealsList![index].strMeal.toString(),
            id: mealsList![index].idMeal.toString(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetailPage(
                    photoUrl: mealsList![index].strMealThumb.toString(),
                    title: mealsList![index].strMeal.toString(),
                    id: mealsList![index].idMeal.toString(),
                  ),
                ),
              );
            },
          );
        },
      ),
      // BlocBuilder<FoodBloc, FoodState>(
      //   builder: (context, state) {
      //     if (state is FoodLoading) {
      //       return const CircularProgressIndicator();
      //     }
      //     if (state is FoodLoaded) {
      //       return ListView.builder(
      //         itemCount: mealsList!.length,
      //         itemBuilder: (context, index) {
      //           return FavPhoto(
      //             photoUrl: mealsList![index].strMealThumb.toString(),
      //             title: mealsList![index].strMeal.toString(),
      //             id: mealsList![index].idMeal.toString(),
      //             onTap: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (context) => FoodDetailPage(
      //                           photoUrl:
      //                               mealsList![index].strMealThumb.toString(),
      //                           title: mealsList![index].strMeal.toString(),
      //                           id: mealsList![index].idMeal.toString(),
      //                         )),
      //               );
      //             },
      //           );
      //         },
      //       );
      //     } else {
      //       return const Text('Something went wrong. Please Contact Admin');
      //     }
      //   },
      // ),
    );
  }
}
