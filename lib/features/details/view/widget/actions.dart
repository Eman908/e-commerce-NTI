import 'package:e_commerce/core/style/color_app.dart';
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
            iconSize: 24,
            textSize: 20,
            padd: 12,
          ),
          InkWell(
              onTap: () {},
              child: Icon(
                Icons.favorite_border,
                color: ColorApp.colorPink,
                size: 40,
              )),
        ],
      ),
    );
  }
}
