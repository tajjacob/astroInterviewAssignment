import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPhoto extends StatelessWidget {
  const DetailPhoto({
    Key? key,
    required this.photoUrl,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String photoUrl;

  final String title;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
              color: Colors.yellow[100],
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(120),
                  bottomLeft: Radius.circular(120),
                ),
                child: CachedNetworkImage(
                  imageUrl: photoUrl,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            // color: Colors.white,
            height: 250,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.star_outlined, color: Colors.red),
                      Text(
                        ' 4.5',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(2, 8, 2, 8),
                        child: Icon(Icons.circle, color: Colors.grey, size: 8),
                      ),
                      Text(
                        '15:06 ',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    icon: const FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.red,
                      size: 50,
                    ),
                    onPressed: onTap,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
