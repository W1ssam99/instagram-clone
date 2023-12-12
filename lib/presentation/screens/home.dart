import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/componets/icons.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/homeWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen() : super();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 55,
              floating: true,
              snap: true,
              pinned: false,
              backgroundColor: Colors.white,
              elevation: 0,
              flexibleSpace: PreferredSize(
                preferredSize: Size.fromHeight(55),
                child: CostumAppBar(),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  StoryRow(),
                  10.heightBox,
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Post(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}