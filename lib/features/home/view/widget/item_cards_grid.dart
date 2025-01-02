import 'package:e_commerce/features/details/view/screen/details_screen.dart';
import 'package:e_commerce/core/style/item_card_list.dart';
import 'package:e_commerce/features/home/cubit/home_test_cubit.dart';
import 'package:e_commerce/features/home/view/widget/item_card.dart';
import 'package:flutter/material.dart';

class ItemCardsGrid extends StatelessWidget {
  const ItemCardsGrid({super.key, required this.cubit});
  final HomeTestCubit cubit;
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
          return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                          m: itemCardList[index],
                        )));
              },
              child: ItemCard(
                m: itemCardList[index],
                cubit: cubit,
              ));
        },
      ),
    );
  }
}
