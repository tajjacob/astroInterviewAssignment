import 'package:flutter/material.dart';

import 'avatar.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.photoUrl,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String photoUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(50, 10, 40, 0),
          width: double.infinity,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 2.0,
                spreadRadius: 0.0,
              ) //B
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
              child: Avatar(
                photoUrl: photoUrl,
                radius: 40,
                borderWidth: 1,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 5, 20),
                height: 60,
                // width: 200,
                child: ListTile(
                  onTap: onTap,
                  title: Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  subtitle: Text(subtitle),
                ),
              ),
            ),
            MaterialButton(
              shape: const CircleBorder(),
              color: Colors.white,
              // padding: EdgeInsets.all(20),
              onPressed: onTap,
              child: const Icon(
                Icons.chevron_right_rounded,
                size: 30,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
