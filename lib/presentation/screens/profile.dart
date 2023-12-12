import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../componets/icons.dart';
import '../widgets/homeWidget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: CustomScrollView(
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
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    MyIcons.edit,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    MyIcons.add,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      MyIcons.menu,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              10.heightBox,
            ],
          ),
        ),
      ],
    )));
  }
}
