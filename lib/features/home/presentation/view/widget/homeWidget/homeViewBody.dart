// ignore_for_file: file_names

import 'package:bookapp_cleanarch/features/home/presentation/view/widget/homeWidget/bestSellerListView.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/widget/homeWidget/customAppBar.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/widget/homeWidget/featuerListView.dart';
import 'package:bookapp_cleanarch/features/home/presentation/view/widget/homeWidget/homeTitle.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatureListView(),
              HomeTitle(),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
