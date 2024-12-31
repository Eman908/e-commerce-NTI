import 'package:e_commerce/features/home/view/model/item_card_list.dart';
import 'package:e_commerce/features/home/view/widget/item_card.dart';
import 'package:flutter/material.dart';

class ItemCardsGrid extends StatelessWidget {
  const ItemCardsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Row(
          spacing: 16,
          children: [
            ItemCard(m: itemCardList[0]),
            ItemCard(m: itemCardList[1]),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            ItemCard(m: itemCardList[0]),
            ItemCard(m: itemCardList[1]),
          ],
        ),
      ],
    );
  }
}
