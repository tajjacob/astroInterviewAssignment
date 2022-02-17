import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingListCat extends StatelessWidget {
  const LoadingListCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Shimmer.fromColors(
            baseColor: (Colors.grey[100])!,
            highlightColor: (Colors.grey[300])!,
            enabled: true,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                width: 100,
                height: 40,
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
                width: 100,
                height: 40,
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
                width: 100,
                height: 40,
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
                width: 100,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
