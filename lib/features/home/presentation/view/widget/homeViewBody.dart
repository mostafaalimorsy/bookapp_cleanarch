import 'package:bookapp_cleanarch/features/home/presentation/view/widget/bestSellerListView.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/widget/customAppBar.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/widget/featuerListView.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/widget/homeTitle.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeatureListView(),
        HomeTitle(),
        BestSellerListView(),
      ],
    );
  }
}
