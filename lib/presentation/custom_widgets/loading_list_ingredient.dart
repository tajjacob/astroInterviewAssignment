import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingListIngredient extends StatelessWidget {
  const LoadingListIngredient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Shimmer.fromColors(
          baseColor: (Colors.grey[100])!,
          highlightColor: (Colors.grey[300])!,
          enabled: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              height: 80,
            ),
          ),
        ),
        Shimmer.fromColors(
          baseColor: (Colors.grey[100])!,
          highlightColor: (Colors.grey[300])!,
          enabled: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              height: 50,
            ),
          ),
        ),
        Shimmer.fromColors(
          baseColor: (Colors.grey[100])!,
          highlightColor: (Colors.grey[300])!,
          enabled: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              height: 50,
            ),
          ),
        ),
        Shimmer.fromColors(
          baseColor: (Colors.grey[100])!,
          highlightColor: (Colors.grey[300])!,
          enabled: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              height: 50,
            ),
          ),
        ),
        Shimmer.fromColors(
          baseColor: (Colors.grey[100])!,
          highlightColor: (Colors.grey[300])!,
          enabled: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              height: 50,
            ),
          ),
        ),
      ],
    );
  }
}
