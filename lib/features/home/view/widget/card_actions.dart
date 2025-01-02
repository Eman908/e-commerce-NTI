import 'package:e_commerce/features/home/view/widget/add_to_cart_button.dart';
import 'package:flutter/material.dart';

class CardActions extends StatelessWidget {
  const CardActions({
    super.key,
  });

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
          Icon(Icons.favorite_outline),
        ],
      ),
    );
  }
}
