import 'package:e_commerce/core/style/color_app.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar() {
  return AppBar(
    centerTitle: true,
    title: Text(
      'تطبيق منتجات',
      style:
          TextStyle(fontWeight: FontWeight.bold, color: ColorApp.colorPurple),
    ),
  );
}
