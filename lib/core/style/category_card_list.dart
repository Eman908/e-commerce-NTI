import 'package:e_commerce/core/style/color_app.dart';
import 'package:e_commerce/core/style/string_app.dart';
import 'package:e_commerce/features/home/model/category_card_model.dart';

List<CategoryCardModel> categoryCardList = [
  CategoryCardModel(
      color: ColorApp.colorPurple, titleCategory: StringApp.electronics),
  CategoryCardModel(
      color: ColorApp.colorBlue, titleCategory: StringApp.clothes),
  CategoryCardModel(
      color: ColorApp.colorGreen, titleCategory: StringApp.homeAndKetchen),
  CategoryCardModel(color: ColorApp.colorOrange, titleCategory: StringApp.more),
];
