// https://github.com/ThaysPrado/flutter-drink-app/blob/master/lib/widgets/home.dart
import 'package:astro_interview/models/beverage_categories.dart';
import 'package:astro_interview/presentation/custom_widgets/square_photo.dart';
import 'package:flutter/material.dart';

class BeverageCategories extends StatelessWidget {
  const BeverageCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          primary: false,
          children: bevCategories.map((Map<String, dynamic> item) {
            return SquarePhoto(
                photoUrl: item['image'],
                radius: 100,
                title: item['title'],
                onTap: () {});
          }).toList()),
    );
  }
}
