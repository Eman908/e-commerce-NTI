import 'package:e_commerce/core/widget/box_decoration.dart';
import 'package:e_commerce/core/style/color_app.dart';
import 'package:e_commerce/core/style/size_app.dart';
import 'package:e_commerce/features/home/cubit/home_test_cubit.dart';
import 'package:e_commerce/features/home/model/item_card_model.dart';
import 'package:e_commerce/features/home/view/widget/card_actions.dart';
import 'package:e_commerce/features/home/view/widget/card_title.dart';
import 'package:e_commerce/features/home/view/widget/price.dart';
import 'package:e_commerce/features/home/view/widget/rating.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    required this.m,
    super.key,
    required this.cubit,
  });
  final ItemCardModel m;
  final HomeTestCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration: boxDecoration(color: ColorApp.colorWhite, radius: 8),
      child: Column(
        spacing: 12,
        children: [
          Expanded(
            child: Image.asset(
              m.image,
            ),
          ),
          CardTitleText(
            title: m.title,
          ),
          Rating(),
          Price(
            priceBefore: m.priceBefor,
            priceAfter: m.priceAfter,
            size: SizeApp.s16,
          ),
          CardActions(
            cubit: cubit,
          )
        ],
      ),
    );
  }
}
