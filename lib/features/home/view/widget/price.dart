import 'package:e_commerce/core/style/color_app.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({
    super.key,
    required this.priceBefore,
    required this.priceAfter,
    required this.size,
  });
  final String priceBefore;
  final String priceAfter;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          Text(
            priceAfter,
            style: TextStyle(
                color: ColorApp.colorPink,
                fontWeight: FontWeight.bold,
                fontSize: size),
          ),
          Text(
            priceBefore,
            style: TextStyle(
                decoration: TextDecoration.lineThrough, fontSize: size),
          ),
        ],
      ),
    );
  }
}
