import 'package:e_commerce/core/style/color_app.dart';
import 'package:e_commerce/core/style/size_app.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({
    super.key,
    required this.priceBefore,
    required this.priceAfter,
  });
  final String priceBefore;
  final String priceAfter;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 10,
      children: [
        Text(
          priceBefore,
          style: TextStyle(
              decoration: TextDecoration.lineThrough, fontSize: SizeApp.s16),
        ),
        Text(
          priceAfter,
          style: TextStyle(
              color: ColorApp.colorPink,
              fontWeight: FontWeight.bold,
              fontSize: SizeApp.s16),
        ),
      ],
    );
  }
}
