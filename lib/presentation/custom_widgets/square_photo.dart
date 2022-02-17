import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SquarePhoto extends StatelessWidget {
  const SquarePhoto({
    Key? key,
    required this.photoUrl,
    required this.radius,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String photoUrl;
  final double radius;
  final String title;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: photoUrl,
                height: radius,
                width: radius,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
