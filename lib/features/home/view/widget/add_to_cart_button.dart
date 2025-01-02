import 'package:e_commerce/core/style/color_app.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
    required this.iconSize,
    required this.textSize,
    required this.padd,
  });
  final double iconSize;
  final double textSize;
  final double padd;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(padd),
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: ColorApp.colorPurple,
      child: Row(
        spacing: 4,
        children: [
          Text(
            'اضافة الي السلة',
            style: TextStyle(color: Colors.white, fontSize: textSize),
          ),
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: iconSize,
          ),
        ],
      ),
    );
  }
}
