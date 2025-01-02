import 'package:e_commerce/core/style/color_app.dart';
import 'package:e_commerce/core/style/size_app.dart';
import 'package:e_commerce/core/widget/app_bar.dart';
import 'package:e_commerce/features/details/view/screen/widget/actions.dart';
import 'package:e_commerce/features/details/view/screen/widget/price.dart';
import 'package:e_commerce/features/details/view/screen/widget/rating.dart';
import 'package:e_commerce/features/home/view/model/item_card_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({required this.m, super.key});
  final ItemCardModel m;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(title: 'التفاصيل'),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    m.image,
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Text(
                m.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorApp.colorPurple,
                    fontSize: SizeApp.s24),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Price(
                    priceBefore: m.priceBefor,
                    priceAfter: m.priceAfter,
                  ),
                  Rating(),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                m.details!,
                style: TextStyle(fontSize: SizeApp.s16),
              ),
              Spacer(
                flex: 1,
              ),
              CardActions()
            ],
          ),
        ),
      ),
    );
  }
}
