import 'package:e_commerce/features/home/view/model/item_card_list.dart';
import 'package:e_commerce/features/home/view/widget/item_card.dart';
import 'package:flutter/material.dart';

class ItemCardsGrid extends StatelessWidget {
  const ItemCardsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: BouncingScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 0.6,
      children: List.generate(
        itemCardList.length,
        (index) {
          return ItemCard(m: itemCardList[index]);
        },
      ),
    );
  }
}
