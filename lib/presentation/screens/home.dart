import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/componets/icons.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/homeWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(55),
            child: CostumAppBar(),
          ),
          body: Column(
            children: [
              StoryRow(),
              10.heightBox,
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey[300],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Post()
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
