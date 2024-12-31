import 'package:e_commerce/features/home/view/widget/add_to_cart_button.dart';
import 'package:flutter/material.dart';

class CardActions extends StatelessWidget {
  const CardActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.favorite_outline),
        AddToCartButton(),
      ],
    );
  }
}
