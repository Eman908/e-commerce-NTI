import 'package:e_commerce/core/style/color_app.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: ColorApp.colorOrange,
              size: 32,
            ),
            Icon(
              Icons.star,
              color: ColorApp.colorOrange,
              size: 32,
            ),
            Icon(
              Icons.star,
              color: ColorApp.colorOrange,
              size: 32,
            ),
            Icon(
              Icons.star_border_outlined,
              color: ColorApp.colorOrange,
              size: 32,
            ),
            Icon(
              Icons.star_border_outlined,
              color: ColorApp.colorOrange,
              size: 32,
            ),
          ],
        ),
        Text(
          "22 تقييم",
          style: TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
