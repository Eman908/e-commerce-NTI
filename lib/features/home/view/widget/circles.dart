import 'package:e_commerce/core/style/color_app.dart';
import 'package:e_commerce/core/style/size_app.dart';
import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  const Circles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: SizeApp.s12,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: ColorApp.colorGrey,
          radius: SizeApp.s7,
          child: CircleAvatar(
            backgroundColor: ColorApp.colorWhite,
            radius: SizeApp.s5,
          ),
        ),
        CircleAvatar(
          backgroundColor: ColorApp.colorPurple,
          radius: SizeApp.s7,
        ),
        CircleAvatar(
          backgroundColor: ColorApp.colorGrey,
          radius: SizeApp.s7,
          child: CircleAvatar(
            backgroundColor: ColorApp.colorWhite,
            radius: SizeApp.s5,
          ),
        ),
        CircleAvatar(
          backgroundColor: ColorApp.colorGrey,
          radius: SizeApp.s7,
          child: CircleAvatar(
            backgroundColor: ColorApp.colorWhite,
            radius: SizeApp.s5,
          ),
        ),
      ],
    );
  }
}
