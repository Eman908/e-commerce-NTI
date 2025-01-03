import 'package:e_commerce/core/style/color_app.dart';
import 'package:e_commerce/core/style/string_app.dart';
import 'package:e_commerce/features/home/cubit/home_test_cubit.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    required this.homeCubit,
    super.key,
  });
  final HomeTestCubit homeCubit;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BottomNavigationBar(
        currentIndex: homeCubit.currentIndex,
        onTap: (value) {
          homeCubit.changeIndex(value);
        },
        selectedFontSize: 16,
        unselectedFontSize: 15,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: ColorApp.colorPurple,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: StringApp.bottomBarHome,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: StringApp.bottomBarDepatement,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: StringApp.bottomBarCart,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: StringApp.bottomBarFavorite,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: StringApp.bottomBarMore,
          )
        ],
      ),
    );
  }
}
