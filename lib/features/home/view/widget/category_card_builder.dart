import 'package:e_commerce/core/style/category_card_list.dart';
import 'package:e_commerce/features/home/view/widget/category_card.dart';
import 'package:flutter/material.dart';

class CategoryCardBuilder extends StatelessWidget {
  const CategoryCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryCardList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CategoryCard(mc: categoryCardList[index]),
            );
          },
        ),
      ),
    );
  }
}
