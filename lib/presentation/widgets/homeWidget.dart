import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:random_string/random_string.dart';
import '../../componets/icons.dart';
import '../../componets/lists.dart';
import '../../controlers/toggleColors/toggle_color_cubit.dart';
import 'package:avatar_stack/avatar_stack.dart';
import 'package:random_avatar/random_avatar.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
            height: 51,
            width: 133,
            child: Image.asset(
              MyIcons.InstaLogo,
              fit: BoxFit.cover,
            )),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              MyIcons.like,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              MyIcons.send,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class StoryRow extends StatelessWidget {
  const StoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: 90.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.purple,
                            Colors.red,
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: NetworkImage(
                            userImage[Random().nextInt(userImage.length)],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                5.heightBox,
                Text(
                  MyUsername[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ToggleLikeCubit(),
      child: Container(
        child: Column(
          children: [
            5.heightBox,
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      userImage[Random().nextInt(userImage.length)],
                    ),
                  ),
                  10.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Location',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                PostsPhot[Random().nextInt(PostsPhot.length)],
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BlocBuilder<ToggleLikeCubit, ToggleLikeState>(
                          builder: (BuildContext context, state) =>
                              GestureDetector(
                            child: SvgPicture.asset(
                              MyIcons.like,
                              color: context.watch<ToggleLikeCubit>().isLike
                                  ? Colors.red
                                  : Colors.black,
                            ),
                            onTap: () {
                              context.read<ToggleLikeCubit>().toggleColor();
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                FocusNode myFocusNode = FocusNode();
                                myFocusNode.requestFocus();
                                return Container(
                                  height: 600,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(60),
                                      topRight: Radius.circular(60),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: TextField(
                                            focusNode: myFocusNode,
                                            // Assign the focus node to the TextField
                                            decoration: InputDecoration(
                                              hintText: "Add a comment",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: InputBorder.none,
                                              prefixIcon: Icon(Icons.add),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: SvgPicture.asset(
                            MyIcons.commint,
                            color: Colors.black,
                          ),
                        ),
                        SvgPicture.asset(MyIcons.send),
                      ],
                    ),
                  ),
                  BlocBuilder<ToggleLikeCubit, ToggleLikeState>(
                      builder: (BuildContext context, ToggleLikeState state) =>
                          GestureDetector(
                              onTap: () {
                                context.read<ToggleLikeCubit>().toggleColor();
                              },
                              child: SvgPicture.asset(
                                MyIcons.save,
                                color: context.watch<ToggleLikeCubit>().isLike
                                    ? Colors.grey
                                    : Colors.black,
                              ))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Like By ****** and ****** others",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  5.heightBox,
                  Row(
                    children: [
                      Text(
                        "View all 1000 comments",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  5.heightBox,
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      5.widthBox,
                      Text(
                        "add is a comment",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  5.heightBox,
                  Row(
                    children: [
                      Text("1 day ago").text.size(12).color(Colors.grey).make(),
                      10.widthBox,
                      Text("See Translation")
                          .text
                          .size(12)
                          .color(Colors.black)
                          .make(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}