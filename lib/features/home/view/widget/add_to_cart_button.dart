import 'package:e_commerce/core/style/color_app.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: ColorApp.colorPurple,
      child: Row(
        spacing: 4,
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: 15,
          ),
          Text(
            'اضافة الي السلة',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
