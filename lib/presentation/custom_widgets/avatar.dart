import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.photoUrl,
    required this.radius,
    required this.borderWidth,
  }) : super(key: key);

  final String photoUrl;
  final double radius;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: borderWidth,
          )),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.grey[100],
        backgroundImage: CachedNetworkImageProvider(photoUrl),
        // photoUrl != null ? CachedNetworkImageProvider(photoUrl) : null,
        child: photoUrl == null
            ? Icon(
                Icons.account_box,
                size: radius,
              )
            : null,
      ),
    );
  }
}
