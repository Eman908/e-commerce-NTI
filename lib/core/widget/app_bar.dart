import 'package:e_commerce/core/style/color_app.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar({required String title}) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style:
          TextStyle(fontWeight: FontWeight.bold, color: ColorApp.colorPurple),
    ),
  );
}
