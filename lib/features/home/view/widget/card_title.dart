import 'package:e_commerce/core/style/color_app.dart';
import 'package:e_commerce/core/style/size_app.dart';
import 'package:flutter/material.dart';

class CardTitleText extends StatelessWidget {
  const CardTitleText({
    required this.title,
    super.key,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.end,
      maxLines: 2,
      style: TextStyle(
          fontSize: SizeApp.s20,
          color: ColorApp.colorPurple,
          fontWeight: FontWeight.bold),
    );
  }
}
