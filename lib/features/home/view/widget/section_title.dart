import 'package:e_commerce/core/style/color_app.dart';
import 'package:e_commerce/core/style/size_app.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
      {super.key,
      required this.title,
      required this.option,
      required this.icon});
  final String title;
  final String option;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: SizeApp.s24,
                color: ColorApp.colorPurple,
                fontWeight: FontWeight.bold),
          ),
          InkWell(
            child: Row(
              children: [
                Icon(icon),
                Text(
                  option,
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: ColorApp.colorPurple,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
