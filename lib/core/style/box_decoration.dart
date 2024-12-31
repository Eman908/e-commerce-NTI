import 'package:flutter/material.dart';

BoxDecoration boxDecoration({required Color color, required double radius}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withValues(alpha: 0.2),
        spreadRadius: 2,
        blurRadius: 2,
      ),
    ],
  );
}
