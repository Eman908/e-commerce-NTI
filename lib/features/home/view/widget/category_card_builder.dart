import 'package:e_commerce/features/home/view/model/category_card_list.dart';
import 'package:e_commerce/features/home/view/widget/category_card.dart';
import 'package:flutter/material.dart';

class CategoryCardBuilder extends StatelessWidget {
  const CategoryCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
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
    );
  }
}
