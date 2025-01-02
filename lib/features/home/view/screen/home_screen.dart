import 'package:e_commerce/core/style/size_app.dart';
import 'package:e_commerce/core/widget/app_bar.dart';
import 'package:e_commerce/core/widget/bottom_bar.dart';
import 'package:e_commerce/core/widget/floationg_bottom.dart';
import 'package:e_commerce/features/home/cubit/home_test_cubit.dart';
import 'package:e_commerce/features/home/cubit/home_test_state.dart';
import 'package:e_commerce/features/home/view/widget/category_card_builder.dart';
import 'package:e_commerce/features/home/view/widget/circles.dart';
import 'package:e_commerce/features/home/view/widget/header.dart';
import 'package:e_commerce/features/home/view/widget/item_cards_grid.dart';
import 'package:e_commerce/features/home/view/widget/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTestCubit, HomeTestState>(
      builder: (context, state) {
        HomeTestCubit cubit = BlocProvider.of(context);

        return Scaffold(
          appBar: homeAppBar(title: 'تطبيق منتجات'),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeApp.s16,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(
                spacing: SizeApp.s16,
                children: [
                  Header(),
                  Circles(),
                  SectionTitle(
                    title: 'الأقسام',
                    option: 'كل الأقسام',
                    icon: null,
                  ),
                  CategoryCardBuilder(),
                  SizedBox(
                    height: SizeApp.s7,
                  ),
                  SectionTitle(title: 'المنتجات', option: '', icon: Icons.tune),
                  SizedBox(
                    height: 600,
                    child: ItemCardsGrid(),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomBar(
            homeCubit: cubit,
          ),
          floatingActionButton: FloatingButton(),
        );
      },
    );
  }
}
