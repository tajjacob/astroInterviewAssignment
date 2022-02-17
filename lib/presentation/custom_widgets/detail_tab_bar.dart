import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailTabBar extends StatefulWidget {
  const DetailTabBar({
    Key? key,
    required this.tab1,
    required this.tab2,
    required this.tab3,
  }) : super(key: key);
  final Widget tab1;
  final Widget tab2;
  final Widget tab3;

  @override
  _DetailTabBarState createState() => _DetailTabBarState();
}

class _DetailTabBarState extends State<DetailTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.insert_comment_outlined,
                size: 25,
              ),
              label: const Text('350'),
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
            ),
            const Expanded(child: SizedBox()),
            IconButton(
                onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.star)),
            IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.bookmark)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.share_outlined)),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(10),
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 2.0,
                spreadRadius: 0.0,
              ) //B
            ],
          ),
          child: TabBar(
            controller: _tabController,
            // give the indicator a decoration (color and border radius)
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              color: Colors.deepOrange,
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey[600],
            tabs: const [
              // first tab [you can add an icon using the icon property]
              Tab(
                text: 'Ingredients',
              ),

              // second tab [you can add an icon using the icon property]
              Tab(
                text: 'Steps',
              ),
              Tab(
                text: 'Nutrition',
              ),
            ],
          ),
        ),
        // tab bar view here
        SizedBox(
          height: (MediaQuery.of(context).size.height) / 2,
          width: MediaQuery.of(context).size.width,
          child: TabBarView(
            controller: _tabController,
            children: [
              widget.tab1,
              widget.tab2,
              widget.tab3,
            ],
          ),
        ),
      ],
    );
  }
}
