import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/presentation/screens/addPost.dart';
import 'package:instagram_clone/presentation/screens/home.dart';
import 'package:instagram_clone/presentation/screens/profile.dart';
import 'package:instagram_clone/presentation/screens/reals.dart';
import 'package:instagram_clone/presentation/screens/search.dart';

import '../../componets/icons.dart';
import '../../componets/lists.dart';
import '../../controlers/navigationScreenBloc/nav_controler_cubit.dart';

class MainAppScreen extends StatelessWidget {
  const MainAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    return BlocProvider(
      create: (context) => NavControlerCubit(),
      child: Scaffold(
          body:BlocBuilder<NavControlerCubit, NavControlerState>(
            builder: (BuildContext context, state) {
             return  ScreenList[_currentIndex];
            },
          ),
          bottomNavigationBar: BlocBuilder<NavControlerCubit, NavControlerState>(
            builder: (BuildContext context, state) => BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: _currentIndex,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    MyIcons.home,
                    color: _currentIndex == 0 ? Colors.black : Colors.grey,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      MyIcons.search,
                      color: _currentIndex == 1 ? Colors.black : Colors.grey,
                    ),
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      MyIcons.add,
                      color: _currentIndex == 2 ? Colors.black : Colors.grey,
                    ),
                    label: 'Add'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      MyIcons.reels,
                      color: _currentIndex == 3 ? Colors.black : Colors.grey,
                    ),
                    label: 'Reals'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: _currentIndex == 4 ? Colors.black : Colors.grey,
                    ),
                    label: 'Profile'),
              ],
              onTap: (index) {
                _currentIndex = index;
                BlocProvider.of<NavControlerCubit>(context).changeIndex(index);
              },
            ),
          )),
    );
  }
}
