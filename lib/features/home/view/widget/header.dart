import 'package:e_commerce/core/style/image_app.dart';
import 'package:e_commerce/core/style/size_app.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeApp.s200,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            spreadRadius: 5,
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(SizeApp.s16),
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(
            ImageApp.imageHeader,
          ),
        ),
      ),
    );
  }
}
