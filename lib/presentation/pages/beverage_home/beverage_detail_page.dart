import 'package:astro_interview/presentation/custom_widgets/detail_photo.dart';
import 'package:astro_interview/presentation/custom_widgets/detail_tab_bar.dart';
import 'package:flutter/material.dart';

import 'beverage_detail_ingredient.dart';

class BeverageDetailPage extends StatelessWidget {
  const BeverageDetailPage({
    Key? key,
    required this.photoUrl,
    required this.title,
    required this.id,
  }) : super(key: key);

  final String photoUrl;
  final String title;
  final String id;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // The Nope button returns "Nope!" as the result.
                Navigator.pop(context);
              },
            ),
            actions: const [SizedBox()],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                DetailPhoto(photoUrl: photoUrl, title: title, onTap: () {}),
                DetailTabBar(
                  tab1: BeverageDetailIngredient(id: id),
                  tab2: const Center(
                    child: Text(
                      'Data Not Available',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  tab3: const Center(
                    child: Text(
                      'Data Not Available',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
