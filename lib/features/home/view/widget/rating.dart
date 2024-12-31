import 'package:e_commerce/core/style/color_app.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "(3/5)",
          style: TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
        Icon(
          Icons.star_border_outlined,
          color: ColorApp.colorOrange,
        ),
        Icon(
          Icons.star_border_outlined,
          color: ColorApp.colorOrange,
        ),
        Icon(
          Icons.star,
          color: ColorApp.colorOrange,
        ),
        Icon(
          Icons.star,
          color: ColorApp.colorOrange,
        ),
        Icon(
          Icons.star,
          color: ColorApp.colorOrange,
        ),
      ],
    );
  }
}
