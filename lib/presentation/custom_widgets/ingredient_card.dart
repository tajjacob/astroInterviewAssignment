import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: (title == '')
          ? const SizedBox(height: 1)
          : ListTile(
              title: Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              subtitle: Text(
                subtitle,
                style:
                    const TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
              ),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://www.themealdb.com/images/ingredients/$title.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: (Colors.grey[100])!,
                    highlightColor: (Colors.grey[300])!,
                    enabled: true,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.white,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
