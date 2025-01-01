import 'package:e_commerce/core/style/box_decoration.dart';
import 'package:e_commerce/core/style/color_app.dart';
import 'package:e_commerce/core/style/size_app.dart';
import 'package:e_commerce/features/home/view/model/category_card_model.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({required this.mc, super.key});
  final CategoryCardModel mc;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: SizeApp.s16,
      children: [
        Container(
          width: SizeApp.s150,
          decoration: boxDecoration(color: mc.color, radius: 16),
          child: Center(
            child: Text(
              mc.titleCategory,
              style: TextStyle(
                  fontSize: SizeApp.s16,
                  color: ColorApp.colorWhite,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
