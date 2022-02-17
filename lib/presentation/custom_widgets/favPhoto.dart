import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FavPhoto extends StatelessWidget {
  const FavPhoto({
    Key? key,
    required this.photoUrl,
    required this.title,
    required this.id,
    required this.onTap,
  }) : super(key: key);

  final String photoUrl;
  final String title;
  final String id;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    var myInt = int.parse(id);
    var myStar = int.parse(id);
    int star = myStar;
    double rating = myInt / 3;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(1),
            child: CachedNetworkImage(
              imageUrl: photoUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 180, 0, 20),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: ListTile(
                title: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 20),
                ),
                subtitle: Row(
                  children: [
                    const Icon(Icons.star_outlined, color: Colors.red),
                    Text(
                      '${star.toString().length} ',
                      style: const TextStyle(color: Colors.red),
                    ),
                    Text('(${rating.toString().length} ratings) Cafe  '),
                    const Icon(Icons.circle, color: Colors.red, size: 5),
                    const Text('  Western  Food')
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
