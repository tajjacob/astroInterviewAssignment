import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingListPop extends StatelessWidget {
  const LoadingListPop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500,
      child: ListView(
        children: [
          Shimmer.fromColors(
            baseColor: (Colors.grey[100])!,
            highlightColor: (Colors.grey[300])!,
            enabled: true,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                height: 200,
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
                height: 200,
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
                height: 200,
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
                height: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
