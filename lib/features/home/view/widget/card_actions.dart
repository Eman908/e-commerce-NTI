import 'package:e_commerce/core/style/color_app.dart';
import 'package:e_commerce/features/home/cubit/home_test_cubit.dart';
import 'package:e_commerce/features/home/view/widget/add_to_cart_button.dart';
import 'package:flutter/material.dart';

class CardActions extends StatelessWidget {
  const CardActions({
    super.key,
    required this.cubit,
  });
  final HomeTestCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AddToCartButton(
            iconSize: 20,
            textSize: 12,
            padd: 8,
          ),
          InkWell(
              // onTap: () {
              //   cubit.changeIcon();
              // },
              child: Icon(
            Icons.favorite_border,
            color: ColorApp.colorPink,
          )),
        ],
      ),
    );
  }
}
